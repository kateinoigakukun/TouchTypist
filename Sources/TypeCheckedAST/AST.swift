
public struct DumpedNode {
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
    public var children: [DumpedNode] {
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

    public var location: Point? {
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

    public var type: String? {
        return attributes.lazy.compactMap {
            switch $0 {
            case .type(let type): return type
            default: return nil
            }
        }.first
    }

    func findChildren(point: Point) -> DumpedNode? {
        guard !children.isEmpty else {
            return nil
        }
        let hitNodes = children.compactMap {
            $0.find(point: point)
        }
        return hitNodes.first
    }

    public func find(point: Point) -> DumpedNode? {
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

    public func find(where prediction: @escaping (DumpedNode) -> Bool) -> DumpedNode? {
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

public struct Point: CustomStringConvertible {
    public let fileName: String?
    public let line: Int
    public let column: Int

    public init(fileName: String? = nil, line: Int, column: Int) {
        self.fileName = fileName
        self.line = line
        self.column = column
    }

    public var description: String {
        return "\(fileName ?? ""):\(line):\(column)"
    }
}

public struct Range: CustomStringConvertible {
    public let start: Point
    public let end: Point

    public var description: String {
        return "[\(start) - \(end)]"
    }

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
    case node(DumpedNode)
    case value(String)
    case unknown(String)
}

public enum Attribute {
    case range(Range)
    case type(String)
    case location(Point)
    case __unknownChar(Character)
    case __unknownMark(String)
}

extension DumpedNode: Equatable {}
extension Range: Equatable {}
extension Point: Equatable {
    public static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.column == rhs.column && lhs.line == rhs.line
    }
}
extension Point: Comparable {
    public static func < (lhs: Point, rhs: Point) -> Bool {
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
