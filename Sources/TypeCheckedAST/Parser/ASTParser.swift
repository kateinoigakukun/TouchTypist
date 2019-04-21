//
//  ASTParser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/20.
//

class ASTParser {
    class State {
        enum Context {
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
        let root: RawASTNode = .init()
        var current: RawASTNode
        var buffers: [Character] = []
        let input: String
        var indentDepth: Int = 0
        var context: Context = .root
        init(input: String) {
            self.input = input
            self.current = self.root
        }
    }

    func parse(_ input: String) -> RawASTNode {

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
        while index != state.input.endIndex {
            switch (state.context, character) {
            case (.root, "("):
                state.context = .nonSpaceSymbol
            case (.root, _): fatalError()
            case (.nonSpaceSymbol, "\n"):
                let value = String(state.buffers)
                state.current.tokens.append(.unspaceableSymbol(value))
                state.context = .indent(0)
            case (.nonSpaceSymbol, " "):
                let value = String(state.buffers)
                state.current.tokens.append(.unspaceableSymbol(value))
                state.context = .value
            case (.nonSpaceSymbol, _):
                state.buffers.append(character)
            case (_, "\n"):
                if ["(", " ", "\n"].contains(peek()) {
                    state.context = .indent(0)
                } else {
                    state.buffers.append(character)
                    succeed()
                    skipUntilEndOfLine()
                }
            case (.indent(let length), " "):
                state.context = .indent(length + 1)
            case (.indent(let length), "("):
                switch length {
                case state.indentDepth+2:
                    let newNode = RawASTNode()
                    newNode.parent = state.current
                    state.current.children.append(newNode)
                    state.current = newNode
                    state.indentDepth += 2
                case state.indentDepth:
                    let newNode = RawASTNode()
                    newNode.parent = state.current.parent
                    state.current.parent?.children.append(newNode)
                    state.current = newNode
                case ...state.indentDepth:
                    var depth = state.indentDepth
                    var parent: RawASTNode = state.current.parent!
                    while depth > length {
                        depth -= 2
                        parent = parent.parent!
                    }
                    let newNode = RawASTNode()
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
                state.buffers = []
                state.context = .value
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
        if !state.buffers.isEmpty {
            switch state.context {
            case .symbol:
                let token = ASTToken.symbol(String(state.buffers))
                state.current.tokens.append(token)
            default: break
            }
        }
        return state.root
    }
}
