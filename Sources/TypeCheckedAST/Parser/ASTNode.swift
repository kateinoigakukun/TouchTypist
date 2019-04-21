//
//  ASTNode.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

import Foundation

public class ASTNode {
    public let name: String
    public let children: [ASTNode]
    public let attributes: [Attribute]
    public let rawTokens: [ASTToken]

    public lazy var value: String? = {
        return rawTokens.compactMapFirst {
            switch $0 {
            case .singleQuoted(let value): return value
            case .doubleQuoted(let value): return value
            default: return nil
            }
        }
    }()

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

    init(
        name: String, children: [ASTNode],
        attributes: [Attribute], rawTokens: [ASTToken]) {
        self.name = name
        self.children = children
        self.attributes = attributes
        self.rawTokens = rawTokens
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


    public func dump() {
        print(_dump())
    }

    private func _dump(depth: Int = 0) -> String {
        let typeNames = attributes.compactMap { attr -> String? in
            switch attr {
            case .type(let type): return type
            default: return nil
            }
        }
        let typeNamesString = typeNames.map { "type='\($0)'" }.joined(separator: " ")
        let locations = attributes.compactMap { attr -> Point? in
            switch attr {
            case .location(let point): return point
            default: return nil
            }
        }
        let locationsString = locations.map { "location=\($0)" }.joined(separator: " ")
        let ranges = attributes.compactMap { attr -> Range? in
            switch attr {
            case .range(let range): return range
            default: return nil
            }
        }
        let rangesString = ranges.map { "range=\($0)" }.joined(separator: " ")
        let indent = Array(repeating: " ", count: depth).joined()
        let valueString = value.map { " \($0)" } ?? ""
        return """
        \(indent)(\(name)\(valueString) \(typeNamesString) \(locationsString) \(rangesString)
        \(children.map { $0._dump(depth: depth + 2) }.joined(separator: "\n"))
        \(indent))
        """
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
