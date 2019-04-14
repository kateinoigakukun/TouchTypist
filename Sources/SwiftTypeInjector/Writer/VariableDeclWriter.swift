import SwiftSyntax
import TypeCheckedAST

final class VariableDeclWriter {
    func write(_ syntax: VariableDeclSyntax, node: RawNode) -> VariableDeclSyntax {
        let newBindings = syntax.bindings.enumerated().reduce(syntax.bindings) {  bindings, element in

            let (offset, binding) = element
            if binding.typeAnnotation != nil { return bindings }
            guard let patternIdentifier = binding.pattern as? IdentifierPatternSyntax else {
                return bindings
            }
            let position = binding.position
            let point = Range.Point(fileName: "filePath.path", line: position.line, column: position.column)
            guard let foundNode = node.find(point: point) else { return bindings }
            guard foundNode.name == "pattern_binding_decl" else { return bindings }
            guard let patternNamed = foundNode.children.first(where: { $0.name == "pattern_named" }) else {
                return bindings
            }
            guard let bindingTypeName = patternNamed.type,
                patternNamed.value == patternIdentifier.identifier.text else { return bindings }
            let typeAnnotation = SyntaxFactory.makeTypeAnnotation(
                colon: SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1)),
                type: SyntaxFactory.makeTypeIdentifier(bindingTypeName, trailingTrivia: .spaces(1))
            )
            let identifier = patternIdentifier.identifier.withTrailingTrivia(.zero)
            let newBinding = binding.withTypeAnnotation(typeAnnotation)
                .withPattern(patternIdentifier.withIdentifier(identifier))
            return bindings.replacing(childAt: offset, with: newBinding)
        }
        return syntax.withBindings(newBindings)
    }
}
