
struct RawNode {
    let name: String
    let value: String?
    let attributes: [Attribute]
    let children: [RawNode]
}

struct Range {
    struct Point {
        let fileName: String
        let line: Int
        let column: Int
    }
    let start: Point
    let end: Point
}

struct Decl {
    let value: String
    let substitution: String?
}

enum Attribute {
    case range(Range)
    case type(String)
    case location(Range.Point)
    case argLabels(String)
    case nothrow
    case decl(Decl)
    case __unknown(UnknownAttribute)
    case __unknownMark(String)
}

struct UnknownAttribute {
    let key: String
    let value: String?
}

extension RawNode: Equatable {}
extension Range: Equatable {}
extension Range.Point: Equatable {}
extension Decl: Equatable {}
extension UnknownAttribute: Equatable {}
extension Attribute: Equatable {}
