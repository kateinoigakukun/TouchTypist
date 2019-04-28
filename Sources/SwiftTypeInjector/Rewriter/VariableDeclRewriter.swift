import SwiftSyntax
import TypeCheckedAST

final class VariableDeclRewriter {
    func write(_ syntax: VariableDeclSyntax, node: ASTNode) -> VariableDeclSyntax {
        let newBindings: PatternBindingListSyntax = syntax.bindings.enumerated().reduce(syntax.bindings) {  (bindings: PatternBindingListSyntax, element: (offset: Int, element: PatternBindingSyntax)) -> PatternBindingListSyntax in

            let (offset, binding) = element
            if binding.typeAnnotation != nil { return bindings }
            guard let patternIdentifier = binding.pattern as? IdentifierPatternSyntax else {
                return bindings
            }
            let point: Point = Point(position: binding.position)
            guard let foundNode = node.find(point: point) else { return bindings }
            guard foundNode.name == "pattern_binding_decl" else { return bindings }
            guard let patternNamed = foundNode.children.first(where: { $0.name == "pattern_named" }) else {
                return bindings
            }
            guard let bindingTypeName = patternNamed.type,
                patternNamed.value == patternIdentifier.identifier.text else { return bindings }
            let typeAnnotation: TypeAnnotationSyntax = SyntaxFactory.makeTypeAnnotation(
                colon: SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1)),
                type: SyntaxFactory.makeTypeIdentifier(bindingTypeName, trailingTrivia: .spaces(1))
            )
            let trailingTriviaPieces: [TriviaPiece] = patternIdentifier.identifier.trailingTrivia?.compactMap {
                switch $0 {
                case .spaces: return nil
                default: return $0
                }
            } ?? []
            let trailingTrivia: Trivia = Trivia(pieces: trailingTriviaPieces)
            let identifier: TokenSyntax = patternIdentifier.identifier.withTrailingTrivia(trailingTrivia)
            let newBinding: PatternBindingSyntax = binding.withTypeAnnotation(typeAnnotation)
                .withPattern(patternIdentifier.withIdentifier(identifier))
            return bindings.replacing(childAt: offset, with: newBinding)
        }
        return syntax.withBindings(newBindings)
    }
}
