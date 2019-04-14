import SwiftSyntax
import TypeCheckedAST

final class ClosureExprWriter {
    func write(_ syntax: ClosureExprSyntax, node: DumpedNode) -> ClosureExprSyntax {
        guard let input = syntax.signature?.input as? ParameterClauseSyntax else {
            return syntax
        }
        let i = input.parameterList[0]
        let colon = SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1))
        let colonedI = i.withColon(colon)

        let newI = colonedI.withType(SyntaxFactory.makeTypeIdentifier("Int"))
        let newParamList = input.parameterList.replacing(childAt: 0, with: newI)
        let newInput = input.withParameterList(newParamList)

        let output: ReturnClauseSyntax
        if let _output = syntax.signature?.output {
            output = _output
        } else {
            output = SyntaxFactory.makeReturnClause(
                arrow: SyntaxFactory.makeArrowToken(),
                returnType: SyntaxFactory.makeTypeIdentifier(
                    "String",
                    leadingTrivia: .spaces(1),
                    trailingTrivia: .spaces(1)
                )
            )
        }
        let newSignature = syntax.signature?.withInput(newInput).withOutput(output)
        return syntax.withSignature(newSignature)
    }
}
