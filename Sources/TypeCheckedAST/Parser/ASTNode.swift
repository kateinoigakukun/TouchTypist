//
//  ASTNode.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

import Foundation

class ASTNode {
    var name: String?
    var children: [ASTNode] = []
    var value: String?
    var tokens: [ASTToken] = []
    weak var parent: ASTNode?

    func asLegacyNode() -> DumpedNode? {
        var tokens = self.tokens
        let name: String? = {
            for (index, token) in tokens.enumerated() {
                switch token {
                case .unspaceableSymbol(let name):
                    tokens.remove(at: index)
                    return name
                default: break
                }
            }
            return nil
        }()
        // workaround for parameter_list
        var additionalAttributes: [Attribute] = []
        guard let _name = name else { return nil }
        if _name == "parameter_list" {
            childrenLoop: for child in children {
                for (index, token) in child.tokens.enumerated() {
                    switch token {
                    case .range(let rangeValue):
                        let range = try! parseRange().parse(.root(from: rangeValue)).get().0
                        additionalAttributes.append(.range(range))
                        child.tokens.remove(at: index-2)
                        child.tokens.remove(at: index-2)
                        child.tokens.remove(at: index-2)
                        break childrenLoop
                    default: break
                    }
                }
            }
        }
        let childrenNode = children.compactMap { $0.asLegacyNode() }
        func parseAttribute(tokens: [ASTToken]) -> ([Attribute], [ASTToken]) {
            var attributes: [Attribute] = []
            var usedIndexes: [Int] = []
            for (index, token) in tokens.enumerated() {
                switch token {
                case .symbol("="):
                    switch tokens[index-1] {
                    case .symbol("range"):
                        guard case let .range(string) = tokens[index+1] else {
                            fatalError()
                        }
                        let range = try! parseRange().parse(.root(from: string)).get().0
                        attributes.append(.range(range))
                    case .symbol("location"):
                        guard case let .symbol(string) = tokens[index+1] else {
                            fatalError()
                        }
                        let location = try! parsePoint().parse(.root(from: string)).get().0
                        attributes.append(.location(location))
                    case .symbol("type"):
                        guard case let .singleQuoted(type) = tokens[index+1] else {
                            fatalError()
                        }
                        attributes.append(.type(type))
                    default: continue
                    }
                    usedIndexes.append(contentsOf: [index-1, index, index+1])
                default: break
                }
            }
            let newTokens = tokens.enumerated().compactMap { (index, token) -> ASTToken? in
                if usedIndexes.contains(index) { return nil }
                return token
            }
            return (attributes, newTokens)
        }

        let (attributes, newTokens) = parseAttribute(tokens: tokens)
        let value: String? = newTokens.lazy
            .compactMap { token in
                switch token {
                case .singleQuoted(let value): return value
                case .doubleQuoted(let value): return value
                default: return nil
                }
            }.first
        return DumpedNode(
            name: _name,
            nodeContents: childrenNode.map(NodeContent.node)
                + (attributes + additionalAttributes).map(NodeContent.attribute)
                + (value.map { [NodeContent.value($0)] } ?? [])
        )
    }
}


extension ASTNode: CustomReflectable {
    var customMirror: Mirror {
        return Mirror.init(
            self,
            children: Array<Mirror.Child>(
                arrayLiteral:
                (label: "name", value: name ?? "<null>"),
                (label: "value", value: value ?? "<null>"),
                (label: "tokens", value: tokens),
                (label: "children", value: children)
            )
        )
    }
}
