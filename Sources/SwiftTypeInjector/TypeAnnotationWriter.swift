import Foundation
import TypeCheckedAST
import SwiftSyntax
import SourceKittenFramework

final class TypeAnnotationWriter: SyntaxRewriter {
    let node: DumpedNode
    init(node: DumpedNode) {
        self.node = node
    }

    override func visit(_ syntax: VariableDeclSyntax) -> DeclSyntax {
        return super.visit(VariableDeclWriter().write(syntax, node: node))
    }

    override func visit(_ syntax: ClosureExprSyntax) -> ExprSyntax {
        return super.visit(ClosureExprWriter().write(syntax, node: node))
    }
}
