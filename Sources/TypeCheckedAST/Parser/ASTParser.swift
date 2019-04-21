//
//  ASTParser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/20.
//

class ASTNode {
    var name: String?
    var children: [ASTNode] = []
    var value: String?
    var tokens: [ASTToken] = []
    weak var parent: ASTNode?

    func asLegacyNode() -> DumpedNode? {
        var tokens = self.tokens
        let childrenNode = children.compactMap { $0.asLegacyNode() }.map(NodeContent.node)
        let name: String? = {
            for (index, token) in tokens.enumerated() {
                switch token {
                case .nonSpaceSymbol(let name):
                    tokens.remove(at: index)
                    return name
                default: break
                }
            }
            return nil
        }()

        func parseAttribute(tokens: [ASTToken]) -> ([NodeContent], [ASTToken]) {
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
            return (attributes.map(NodeContent.attribute), newTokens)
        }
        guard let _name = name else { return nil }
        let (attributes, newTokens) = parseAttribute(tokens: tokens)
        let value: String? = newTokens.lazy
            .compactMap { token in
                switch token {
                case .singleQuoted(let value): return value
                case .doubleQuoted(let value): return value
                default: return nil
                }
            }.first
        return DumpedNode(
            name: _name,
            nodeContents: childrenNode + attributes
                + (value.map { [NodeContent.value($0)] } ?? [])
        )
    }
}

enum ASTToken {
    case symbol(String)
    case range(String)
    case singleQuoted(String)
    case doubleQuoted(String)
    case nonSpaceSymbol(String)
}

extension ASTNode: CustomReflectable {
    var customMirror: Mirror {
        return Mirror.init(
            self,
            children: Array<Mirror.Child>(
                arrayLiteral:
                (label: "name", value: name ?? "<null>"),
                (label: "value", value: value ?? "<null>"),
                (label: "tokens", value: tokens),
                (label: "children", value: children)
            )
        )
    }
}

struct ASTAttribute {
    let key: String
    let value: String?
}

class ASTParser {
    class State {
        enum ParsingContext {
            case root
            case indent(Int)
            case node
            case nonSpaceSymbol
            case symbol
            case singleQuoted
            case doubleQuoted
            case value
            case range
        }
        let root: ASTNode = .init()
        var current: ASTNode
        var buffers: [Character] = []
        let input: String
        var indentDepth: Int = 0
        var context: ParsingContext = .node
        init(input: String) {
            self.input = input
            self.current = self.root
        }
    }

    func parse(_ input: String) -> ASTNode {

        let state = State(input: input)
        var character: Character
        var index = state.input.startIndex {
            didSet {
                if index != state.input.endIndex {
                    character = state.input[index]
                }
            }
        }
        character = state.input[index]
        func succeed() { index = state.input.index(after: index) }
        func skipUntilEndOfLine() {
            guard let newLineIndex = state.input[index...].firstIndex(of: "\n") else {
                return
            }
            index = state.input.index(before: newLineIndex)
        }
        func peek() -> Character? {
            let nextIndex = state.input.index(after: index)
            guard nextIndex != state.input.endIndex else { return nil }
            return state.input[nextIndex]
        }
        state.context = .root
        while index != state.input.endIndex {
            switch (state.context, character) {
            case (.root, "("):
                state.context = .nonSpaceSymbol
            case (.root, _): fatalError()
            case (_, "\n"):
                if ["(", " ", "\n"].contains(peek()) {
                    state.context = .indent(0)
                } else {
                    state.buffers.append(character)
                    print("Unexpected char \(peek().debugDescription) in \(state.context)")
                    succeed()
                    skipUntilEndOfLine()
                }
            case (.indent(let length), " "):
                state.context = .indent(length + 1)
            case (.indent(let length), "("):
                switch length {
                case state.indentDepth+2:
                    let newNode = ASTNode()
                    newNode.parent = state.current
                    state.current.children.append(newNode)
                    state.current = newNode
                    state.indentDepth += 2
                case state.indentDepth:
                    let newNode = ASTNode()
                    newNode.parent = state.current.parent
                    state.current.parent?.children.append(newNode)
                    state.current = newNode
                case ...state.indentDepth:
                    var depth = state.indentDepth
                    var parent: ASTNode = state.current.parent!
                    while depth > length {
                        depth -= 2
                        parent = parent.parent!
                    }
                    let newNode = ASTNode()
                    newNode.parent = parent
                    parent.children.append(newNode)
                    state.current = newNode
                    state.indentDepth = depth
                default: fatalError()
                }
                state.buffers = []
                state.context = .nonSpaceSymbol
            case (.indent, ")"): break
            case (.indent, "#"): // #if or #else
                state.indentDepth += 4
                skipUntilEndOfLine()
                state.context = .indent(0)
            case (.indent, _):
                skipUntilEndOfLine()
            case (.nonSpaceSymbol, " "):
                let value = String(state.buffers)
                state.current.tokens.append(.nonSpaceSymbol(value))
                state.context = .value
            case (.nonSpaceSymbol, _):
                state.buffers.append(character)
            case (.value, "\""):
                state.buffers = []
                state.context = .doubleQuoted
            case (.value, "'"):
                state.buffers = []
                state.context = .singleQuoted
            case (.value, "["):
                state.buffers = []
                state.buffers.append(character)
                state.context = .range
            case (.value, " "): break
            case (.value, _):
                state.buffers = []
                state.buffers.append(character)
                state.context = .symbol
            case (.doubleQuoted, "\""):
                let value = String(state.buffers)
                state.current.tokens.append(.doubleQuoted(value))
            case (.doubleQuoted, _):
                state.buffers.append(character)
            case (.singleQuoted, "'"):
                let value = String(state.buffers)
                state.current.tokens.append(.singleQuoted(value))
                state.buffers = []
                state.context = .value
            case (.singleQuoted, _):
                state.buffers.append(character)
            case (.symbol, "="):
                var tokens = state.buffers.split(separator: " ")
                let key = String(tokens.removeLast())
                let bufferedTokens = tokens.map {
                    ASTToken.symbol(String($0))
                }
                state.current.tokens.append(contentsOf: bufferedTokens)
                state.current.tokens.append(.symbol(key))
                state.current.tokens.append(.symbol(String(character)))
                if key == "range" {
                    state.context = .range
                } else {
                    state.context = .value
                }
                state.buffers = []
            case (.symbol, _):
                state.buffers.append(character)
            case (.range, "]"):
                state.buffers.append(character)
                let value = String(state.buffers)
                state.buffers = []
                state.current.tokens.append(.range(value))
                state.context = .value
            case (.range, _):
                state.buffers.append(character)
            default:
                print(
                    """
                    Unhandled failure.
                    context: \(state.context)
                    character: \(character)
                    """
                )
                fatalError()
            }

            succeed()
        }
        return state.root
    }
}
