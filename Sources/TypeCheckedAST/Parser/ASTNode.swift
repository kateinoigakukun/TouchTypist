//
//  ASTNode.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

import Foundation

public class ASTNode {
    public let name: String
    public let value: String?
    public let children: [ASTNode]
    public let attributes: [Attribute]
    public let rawTokens: [ASTToken]

    public lazy var location: Point? = {
        return attributes.compactMapFirst {
            switch $0 {
            case .location(let point): return point
            default: return nil
            }
        }
    }()

    public lazy var range: Range? = {
        return attributes.compactMapFirst {
            switch $0 {
            case .range(let range): return range
            default: return nil
            }
        }
    }()

    public lazy var type: String? = {
        return attributes.compactMapFirst {
            switch $0 {
            case .type(let type): return type
            default: return nil
            }
        }
    }()


    init?(rawAST: RawASTNode) {
        var tokens = rawAST.tokens
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
            childrenLoop: for child in rawAST.children {
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
        let childrenNode = rawAST.children.compactMap { ASTNode(rawAST: $0) }
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
        self.name = _name
        self.children = childrenNode
        self.attributes = attributes + additionalAttributes
        self.value = value
        self.rawTokens = rawAST.tokens
    }


    func findChildren(point: Point) -> ASTNode? {
        guard !children.isEmpty else {
            return nil
        }
        let hitNodes = children.compactMap {
            $0.find(point: point)
        }
        return hitNodes.first
    }

    public func find(point: Point) -> ASTNode? {
        guard let location = location else {
            guard let range = range else { return findChildren(point: point) }
            if range.contains(point) {
                return findChildren(point: point) ?? self
            } else {
                return findChildren(point: point)
            }
        }
        if location == point {
            return self
        } else if location > point {
            return nil
        } else {
            return findChildren(point: point)
        }
    }

    public func find(where prediction: @escaping (ASTNode) -> Bool) -> ASTNode? {
        guard prediction(self) else {
            if let found = children.first(where: prediction) {
                return found
            } else {
                return children.lazy.compactMap { $0.find(where: prediction) }.first
            }
        }
        return self
    }
}


fileprivate extension Array {
    func compactMapFirst<U>(where transform: (Element) -> U?) -> U? {
        for element in self {
            guard let newElement = transform(element) else { continue }
            return newElement
        }
        return nil
    }
}
