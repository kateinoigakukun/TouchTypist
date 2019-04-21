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

public enum Attribute {
    case range(Range)
    case type(String)
    case location(Point)
    case __unknownChar(Character)
}

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
