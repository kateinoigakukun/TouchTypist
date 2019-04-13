
public struct RawNode {
    public let name: String
    public let nodeContents: [NodeContent]
    public var attributes: [Attribute] {
        return nodeContents.compactMap {
            switch $0 {
            case .attribute(let attr): return attr
            default: return nil
            }
        }
    }
    public var children: [RawNode] {
        return nodeContents.compactMap {
            switch $0 {
            case .node(let node): return node
            default: return nil
            }
        }
    }
    public var value: String? {
        return nodeContents.lazy.compactMap {
            switch $0 {
            case .value(let value): return value
            default: return nil
            }
        }.first
    }

    public var location: Range.Point? {
        return attributes.lazy.compactMap {
            switch $0 {
            case .location(let point): return point
            default: return nil
            }
        }.first
    }

    public var range: Range? {
        return attributes.lazy.compactMap {
            switch $0 {
            case .range(let range): return range
            default: return nil
            }
        }.first
    }

    public func find(point: Range.Point) -> RawNode? {
        func findChildren() -> RawNode? {
            guard !children.isEmpty else { return nil }
            let hitNodes = children.compactMap {
                $0.find(point: point)
            }
            return hitNodes.first
        }
        guard let location = location else {
            guard let range = range else { return findChildren() }
            if range.contains(point) {
                return findChildren() ?? self
            } else {
                return findChildren()
            }
        }
        if location == point {
            return self
        } else if location > point {
            return nil
        } else {
            return findChildren()
        }
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
        let locations = attributes.compactMap { attr -> Range.Point? in
            switch attr {
            case .location(let point): return point
            default: return nil
            }
        }
        let locationsString = locations.map { "location=\($0)" }.joined(separator: " ")
        let indent = Array(repeating: " ", count: depth).joined()
        return """
        \(indent)(\(name) \(typeNamesString) \(locationsString)
        \(children.map { $0._dump(depth: depth + 2) }.joined(separator: "\n"))
        \(indent))
        """
    }
}

public struct Range {
    public struct Point: CustomStringConvertible {
        public let fileName: String
        public let line: Int
        public let column: Int

        public var description: String {
            return "\(fileName):\(line):\(column)"
        }
    }
    public let start: Point
    public let end: Point

    func contains(_ point: Point) -> Bool {
        switch (point.line, point.column) {
        case (start.line, start.column):
            return true
        case (end.line, end.column):
            return true
        case (start.line..<end.line, _):
            return true
        case (start.line, start.column...end.column) where start.line == end.line:
            return true
        default:
            return false
        }
    }
}

public struct Decl {
    public let value: String
    public let substitution: String?
}

public enum NodeContent: Equatable {
    case attribute(Attribute)
    case node(RawNode)
    case value(String)
    case unknown
}

public enum Attribute {
    case range(Range)
    case type(String)
    case location(Range.Point)
    case __unknownChar(Character)
    case __unknownMark(String)
}

extension RawNode: Equatable {}
extension Range: Equatable {}
extension Range.Point: Equatable {}
extension Range.Point: Comparable {
    public static func < (lhs: Range.Point, rhs: Range.Point) -> Bool {
        switch (lhs.line, lhs.column) {
        case (rhs.line, rhs.column):
            return false
        case (rhs.line, ..<rhs.column):
            return true
        case (..<rhs.line, _):
            return true
        case (rhs.line..., _):
            return false
        default: fatalError()
        }
    }
}
extension Attribute: Equatable {}
