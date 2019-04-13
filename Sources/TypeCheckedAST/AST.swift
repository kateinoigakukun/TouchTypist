
struct RawNode {
    let name: String
    let attributeOrNodeOrValue: [NodeContent]
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

    func find() {
        
    }

    func dump() {
        print(_dump())
    }

    private func _dump(depth: Int = 0) -> String {
        let typeNames = attributes.compactMap { attr -> String? in
            switch attr {
            case .type(let type): return type
            default: return nil
            }
        }
        let locations = attributes.compactMap { attr -> Range.Point? in
            switch attr {
            case .location(let point): return point
            default: return nil
            }
        }
        let indent = Array(repeating: " ", count: depth).joined()
        return """
        \(indent)(\(name) \(typeNames.map { "type='\($0)'" }.joined(separator: " ")) \(locations.map { "location=\($0)" }.joined(separator: " "))
        \(children.map { $0._dump(depth: depth + 2) }.joined(separator: "\n"))
        \(indent))
        """
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

enum NodeContent: Equatable {
    case attribute(Attribute)
    case node(RawNode)
    case value(String)
    case unknown
}

enum Attribute {
    case range(Range)
    case type(String)
    case location(Range.Point)
    case __unknownChar(Character)
    case __unknownMark(String)
}

extension RawNode: Equatable {}
extension Range: Equatable {}
extension Range.Point: Equatable {}
extension Attribute: Equatable {}
