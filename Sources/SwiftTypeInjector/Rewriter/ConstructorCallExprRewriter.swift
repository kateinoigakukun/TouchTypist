import SwiftSyntax
import TypeCheckedAST

final class ConstructorCallExprRewriter {
    
    func write(_ syntax: FunctionCallExprSyntax, node: ASTNode) -> FunctionCallExprSyntax {
        let called = syntax.calledExpression
        guard let identifier = called as? IdentifierExprSyntax else { return syntax }
        guard let constructor = node
            .find(point: Point(position: identifier.position))?
            .children.first(where: { $0.name == "constructor_ref_call_expr" }),
            let constructorTypeString = constructor.type,
            let constructorType = try? parseFunctionType(constructorTypeString),
            case let .generic(genericType) = constructorType.output else {
                return syntax
        }
        let arguments = genericType.parameters.enumerated().map { (index, type) -> GenericArgumentSyntax in
            let isLast = index == genericType.parameters.endIndex-1
            return SyntaxFactory.makeGenericArgument(
                argumentType: SyntaxFactory.makeTypeIdentifier(type.description),
                trailingComma: isLast ? nil : SyntaxFactory.makeCommaToken(trailingTrivia: .spaces(1))
            )
        }
        let genericArguments = SyntaxFactory.makeGenericArgumentList(arguments)
        let genericArgumentClause = SyntaxFactory.makeGenericArgumentClause(leftAngleBracket: SyntaxFactory.makeLeftAngleToken(), arguments: genericArguments, rightAngleBracket: SyntaxFactory.makeRightAngleToken())
        let specializeExpr = SyntaxFactory.makeSpecializeExpr(expression: SyntaxFactory.makeIdentifierExpr(identifier: SyntaxFactory.makeIdentifier(genericType.name), declNameArguments: nil), genericArgumentClause: genericArgumentClause)
        return syntax.withCalledExpression(specializeExpr)
    }
}
