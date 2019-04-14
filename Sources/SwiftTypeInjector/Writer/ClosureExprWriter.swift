import SwiftSyntax
import TypeCheckedAST

final class ClosureExprWriter {
    func write(_ syntax: ClosureExprSyntax, node: DumpedNode) -> ClosureExprSyntax {
        if let input = syntax.signature?.input as? ParameterClauseSyntax {
            return write(syntax, input: input, node: node)
        }
        if let parameterList = syntax.signature?.input as? ClosureParamListSyntax {
            return write(syntax, parameterList: parameterList, node: node)
        }
        return syntax
    }

    func write(_ syntax: ClosureExprSyntax, parameterList: ClosureParamListSyntax, node: DumpedNode) -> ClosureExprSyntax {
        guard let parenNode = node.find(point: Point(position: syntax.position)),
            let closureNode = parenNode.find(where: { $0.name == "closure_expr" }),
            let closureRawType = closureNode.type,
            let closureType = try? parseFunctionType(closureRawType) else {
                return syntax
        }

        guard let parameterListNode = node.find(point: Point(position: parameterList.position)),
            parameterListNode.name == "parameter_list" else {
                return syntax
        }

        let typedParameterList = parameterList.enumerated().map { element -> FunctionParameterSyntax in
            let (index, param) = element
            let newType = self.addTypeAnnotation(to: param, parameterListNode: parameterListNode)
            if index == parameterList.count-1 {
                return newType
            } else {
                return newType.withTrailingComma(SyntaxFactory.makeCommaToken())
            }
        }
        let newParameterList = SyntaxFactory.makeFunctionParameterList(typedParameterList)
        let parameterClause = SyntaxFactory.makeParameterClause(
            leftParen: SyntaxFactory.makeLeftParenToken(),
            parameterList: newParameterList,
            rightParen: SyntaxFactory.makeRightParenToken()
        )
        var newSignature = syntax.signature?.withInput(parameterClause)

        if let _ = syntax.signature?.output {
            return syntax.withSignature(newSignature)
        }
        let output = SyntaxFactory.makeReturnClause(
            arrow: SyntaxFactory.makeArrowToken(leadingTrivia: .spaces(1)),
            returnType: SyntaxFactory.makeTypeIdentifier(
                closureType.output.description,
                leadingTrivia: .spaces(1),
                trailingTrivia: .spaces(1)
            )
        )

        newSignature = newSignature?.withOutput(output)
        return syntax.withSignature(newSignature)
    }

    func addTypeAnnotation(to parameter: ClosureParamSyntax, parameterListNode node: DumpedNode) -> FunctionParameterSyntax {
        let funcParameter = SyntaxFactory.makeFunctionParameter(
            attributes: nil, firstName: parameter.name.withoutTrailingTrivia(), secondName: nil,
            colon: SyntaxFactory.makeColonToken(trailingTrivia: .spaces(1)),
            type: nil,
            ellipsis: nil, defaultArgument: nil, trailingComma: nil
        )

        guard let foundNode = node.children.first(where: { $0.value == parameter.name.text }) else {
            return funcParameter
        }
        guard let typeName = foundNode.type else { return funcParameter }
        return funcParameter.withType(SyntaxFactory.makeTypeIdentifier(typeName))
    }

    func write(_ syntax: ClosureExprSyntax, input: ParameterClauseSyntax, node: DumpedNode) -> ClosureExprSyntax {
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

        let typedParameterList = input.parameterList.map {
            self.addTypeAnnotation(to: $0, parameterListNode: parameterListNode)
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
        guard let typeName = foundNode.type else {
            return parameter
        }
        var parameter = parameter
        let colon = SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1))
        parameter = parameter.withColon(colon)
        let type = SyntaxFactory.makeTypeIdentifier(typeName)
        return parameter.withType(type)
    }
}
