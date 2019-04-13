//
//  InjectionPoint.swift
//  SwiftTypeInjector
//
//  Created by Yuta Saito on 2019/04/05.
//

import Foundation

enum InjectionPoint {
    case substitution
    case closure

    static func detect(from file: File) -> [InjectionPoint] {
        return []
    }
}


extension InjectionPoint: Equatable {}

import TypeCheckedAST
import SwiftSyntax
import SourceKittenFramework

final class InjectionPointDetector: SyntaxRewriter {
    let filePath: URL
    let node: RawNode
    init(filePath: URL, node: RawNode) {
        self.filePath = filePath
        self.node = node
    }

    override func visit(_ node: VariableDeclSyntax) -> DeclSyntax {
        let newBindings = node.bindings.enumerated().reduce(node.bindings) {
            [filePath] bindings, element in

            let (offset, binding) = element
            if binding.typeAnnotation != nil { return bindings }
            guard let patternIdentifier = binding.pattern as? IdentifierPatternSyntax else {
                return bindings
            }
            let node = self.node
            let request = Request.cursorInfo(
                file: filePath.path,
                offset: Int64(binding.position.utf8Offset),
                arguments: [filePath.path]
            )
            let result = try! request.send()
            guard let bindingName = result["key.name"] as? String else { fatalError() }
            guard let bindingTypeName = result["key.typename"] as? String else { fatalError() }
            assert(bindingName == patternIdentifier.identifier.text)
            let typeAnnotation = SyntaxFactory.makeTypeAnnotation(
                colon: SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1)),
                type: SyntaxFactory.makeTypeIdentifier(bindingTypeName, trailingTrivia: .spaces(1))
            )
            let identifier = patternIdentifier.identifier.withTrailingTrivia(.zero)
            let newBinding = binding.withTypeAnnotation(typeAnnotation)
                .withPattern(patternIdentifier.withIdentifier(identifier))
            return bindings.replacing(childAt: offset, with: newBinding)
        }
        return super.visit(node.withBindings(newBindings))
    }

    override func visit(_ node: ClosureExprSyntax) -> ExprSyntax {
        guard let input = node.signature?.input as? ParameterClauseSyntax else {
            return super.visit(node)
        }
        let i = input.parameterList[0]
        input.position.utf8Offset
        let colon = SyntaxFactory.makeColonToken().withTrailingTrivia(.spaces(1))
        let colonedI = i.withColon(colon)

        let newI = colonedI.withType(SyntaxFactory.makeTypeIdentifier("Int"))
        let newParamList = input.parameterList.replacing(childAt: 0, with: newI)
        let newInput = input.withParameterList(newParamList)

        let output: ReturnClauseSyntax
        if let _output = node.signature?.output {
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
        let newSignature = node.signature?.withInput(newInput).withOutput(output)
        return super.visit(node.withSignature(newSignature))
    }
}
