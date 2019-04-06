
struct RawNode {
    let name: String
    let value: String?
    let attributeOrNode: [AttributeOrNode]
    var attributes: [Attribute] {
        return attributeOrNode.compactMap {
            switch $0 {
            case .attribute(let attr): return attr
            case .node: return nil
            }
        }
    }
    var children: [RawNode] {
        return attributeOrNode.compactMap {
            switch $0 {
            case .attribute: return nil
            case .node(let node): return node
            }
        }
    }
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

enum AttributeOrNode: Equatable {
    case attribute(Attribute)
    case node(RawNode)
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
