import TypeCheckedAST
import SwiftSyntax

final class TypeAnnotationRewriter: SyntaxRewriter {
    let node: ASTNode
    init(node: ASTNode) {
        self.node = node
    }

    override func visit(_ syntax: VariableDeclSyntax) -> DeclSyntax {
        return super.visit(VariableDeclRewriter().write(syntax, node: node))
    }

    override func visit(_ syntax: ClosureExprSyntax) -> ExprSyntax {
        return super.visit(ClosureExprRewriter().write(syntax, node: node))
    }
}
