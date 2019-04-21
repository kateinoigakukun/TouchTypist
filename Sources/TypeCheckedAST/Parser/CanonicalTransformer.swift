//
//  CanonicalTransformer.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

import Foundation

// FIXME
class CanonicalTransformer {
    enum Error: LocalizedError {
        case noNodeName
    }

    func transform(rawAST: RawASTNode) throws -> ASTNode {
        let (optionalName, tokens) = trimName(rawAST.tokens)
        guard let name = optionalName else {
            throw Error.noNodeName
        }
        // workaround for parameter_list
        var additionalAttributes: [Attribute] = []
        if name == "parameter_list" {
            let (optionalRange, children) = try trimParameterListRange(rawAST.children)
            if let range = optionalRange {
                additionalAttributes.append(.range(range))
            }
            rawAST.children = children
        }
        let childrenNode = rawAST.children.compactMap {
            try? CanonicalTransformer().transform(rawAST: $0)
        }
        let (attributes, trimmedTokens) = try trimAttribute(tokens: tokens)
        return ASTNode(
            name: name, children: childrenNode,
            attributes: attributes + additionalAttributes,
            rawTokens: trimmedTokens
        )
    }

    func trimName(_ tokens: [ASTToken]) -> (String?, [ASTToken]) {
        var tokens = tokens
        for (index, token) in tokens.enumerated() {
            switch token {
            case .unspaceableSymbol(let name):
                tokens.remove(at: index)
                return (name, tokens)
            default: break
            }
        }
        return (nil, tokens)
    }

    func trimParameterListRange(_ children: [RawASTNode]) throws -> (Range?, [RawASTNode]) {

        for child in children {
            for (index, token) in child.tokens.enumerated() {
                switch token {
                case .range(let rangeValue):
                    let (range, _) = try parseRange()
                        .parse(.root(from: rangeValue)).get()
                    child.tokens.removeSubrange((index-2)...index)
                    return (range, children)
                default: break
                }
            }
        }
        return (nil, children)
    }

    func trimAttribute(tokens: [ASTToken]) throws -> ([Attribute], [ASTToken]) {
        var attributes: [Attribute] = []
        var usedIndexes: [Int] = []
        for (index, token) in tokens.enumerated() {
            switch token {
            case .symbol("="):
                switch tokens[index-1] {
                case .symbol("range"):
                    let nextIndex = tokens.index(after: index)
                    guard nextIndex != tokens.endIndex else { continue }
                    guard case let .range(string) = tokens[nextIndex] else {
                        fatalError()
                    }
                    let range = try parseRange().parse(.root(from: string)).get().0
                    attributes.append(.range(range))
                case .symbol("location"):
                    let nextIndex = tokens.index(after: index)
                    guard nextIndex != tokens.endIndex else { continue }
                    guard case let .symbol(string) = tokens[nextIndex] else {
                        fatalError()
                    }
                    let location = try parsePoint().parse(.root(from: string)).get().0
                    attributes.append(.location(location))
                case .symbol("type"):
                    let nextIndex = tokens.index(after: index)
                    guard nextIndex != tokens.endIndex else { continue }
                    guard case let .singleQuoted(type) = tokens[nextIndex] else {
                        continue
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
}
