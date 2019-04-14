import SwiftSyntax
import TypeCheckedAST

final class ClosureExprWriter {
    func write(_ syntax: ClosureExprSyntax, node: DumpedNode) -> ClosureExprSyntax {
        guard let input = syntax.signature?.input as? ParameterClauseSyntax else {
            return syntax
        }
        guard let parenNode = node.find(point: Point(position: syntax.position)),
            let closureNode = parenNode.find(where: { $0.name == "closure_expr" }),
            let closureRawType = closureNode.type,
            let closureType = try? parseFunctionType(closureRawType) else {
            return syntax
        }

        guard let parameterListNode = node.find(point: Point(position: input.parameterList.position)),
            parameterListNode.name == "parameter_list" else {
                return syntax
        }

        let typedParameterList = input.parameterList.map { [addTypeAnnotation] in
            addTypeAnnotation($0, parameterListNode)
        }
        let newParameterList = typedParameterList.enumerated()
            .reduce(input.parameterList) { parameterList, element in
                let (index, parameter) = element
                return parameterList.replacing(childAt: index, with: parameter)
        }
        let newInput = input.withParameterList(newParameterList)

        if let _ = syntax.signature?.output {
            let newSignature = syntax.signature?.withInput(newInput)
            return syntax.withSignature(newSignature)
        }
        let output = SyntaxFactory.makeReturnClause(
            arrow: SyntaxFactory.makeArrowToken(),
            returnType: SyntaxFactory.makeTypeIdentifier(
                closureType.output.description,
                leadingTrivia: .spaces(1),
                trailingTrivia: .spaces(1)
            )
        )
        let newSignature = syntax.signature?.withInput(newInput).withOutput(output)
        return syntax.withSignature(newSignature)
    }

    func addTypeAnnotation(to parameter: FunctionParameterSyntax, parameterListNode node: DumpedNode) -> FunctionParameterSyntax {
        guard let parameterName = parameter.firstName, parameter.type == nil else {
            return parameter
        }

        guard let foundNode = node.children.first(where: { $0.value == parameterName.text }) else {
            return parameter
        }
        guard let value = foundNode.value,
            let firstName = parameter.firstName?.text,
            let typeName = foundNode.type,
            value == firstName else {
                return parameter
        }
        var parameter = parameter
        let colon = SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1))
        parameter = parameter.withColon(colon)
        let type = SyntaxFactory.makeTypeIdentifier(typeName)
        return parameter.withType(type)
    }
}
