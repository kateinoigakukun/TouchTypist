
struct RawNode {
    let name: String
    let attributeOrNodeOrValue: [AttributeOrNodeOrValue]
    var attributes: [Attribute] {
        return attributeOrNodeOrValue.compactMap {
            switch $0 {
            case .attribute(let attr): return attr
            default: return nil
            }
        }
    }
    var children: [RawNode] {
        return attributeOrNodeOrValue.compactMap {
            switch $0 {
            case .node(let node): return node
            default: return nil
            }
        }
    }
    var value: String? {
        return attributeOrNodeOrValue.lazy.compactMap {
            switch $0 {
            case .value(let value): return value
            default: return nil
            }
        }.first
    }
}

struct Range {
    struct Point: CustomStringConvertible {
        let fileName: String
        let line: Int
        let column: Int

        var description: String {
            return "\(fileName):\(line):\(column)"
        }
    }
    let start: Point
    let end: Point
}

struct Decl {
    let value: String
    let substitution: String?
}

enum AttributeOrNodeOrValue: Equatable {
    case attribute(Attribute)
    case node(RawNode)
    case value(String)
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
