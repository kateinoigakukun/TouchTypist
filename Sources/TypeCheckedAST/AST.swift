
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


enum Attribute {
    case range(Range)
    case type(String)
    case location(Range.Point)
    case argLabels(String)
    case nothrow
    case __unknown(UnknownAttribute)
}

struct UnknownAttribute {
    let key: String
    let value: String?
}

extension RawNode: Equatable {}
extension Range: Equatable {}
extension Range.Point: Equatable {}
extension UnknownAttribute: Equatable {}
extension Attribute: Equatable {}
