import TypeCheckedAST
import SwiftSyntax

final class TypeAnnotationWriter: SyntaxRewriter {
    let node: ASTNode
    init(node: ASTNode) {
        self.node = node
    }

    override func visit(_ syntax: VariableDeclSyntax) -> DeclSyntax {
        return super.visit(VariableDeclWriter().write(syntax, node: node))
    }

    override func visit(_ syntax: ClosureExprSyntax) -> ExprSyntax {
        return super.visit(ClosureExprWriter().write(syntax, node: node))
    }
}
