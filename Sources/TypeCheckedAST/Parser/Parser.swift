//
//  Parser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//


struct ParserInput {
    let text: String
    let startIndex: String.Index
    let debugContext: DebugContext?

    init(previous: ParserInput, index: String.Index, debugContext: DebugContext? = nil) {
        self.text = previous.text
        self.startIndex = index
        self.debugContext = previous.debugContext ?? debugContext
    }

    static func root(from text: String) -> ParserInput {
        return ParserInput(text: text, startIndex: text.startIndex)
    }

    fileprivate init(text: String, startIndex: String.Index) {
        self.text = text
        self.startIndex = startIndex
        self.debugContext = nil
    }

    var current: String {
        return String(text[startIndex...])
    }
}

protocol ParserError: Error {
    var input: ParserInput { get }
}

struct AnyParserError: ParserError {
    var input: ParserInput { return original.input }
    let original: ParserError
}

struct Parser<T> {
    typealias Input = ParserInput
    let parse: (Input) -> Result<(T, Input), AnyParserError>

    @inline(__always)
    func map<U>(_ transformer: @escaping (T) -> U) -> Parser<U> {
        return Parser<U> {
            return self.parse($0).map { (transformer($0), $1) }
        }
    }

    @inline(__always)
    func flatMap<U>(_ transformer: @escaping (T) -> Parser<U>) -> Parser<U> {
        return Parser<U> { input1 in
            self.parse(input1).flatMap {
                return transformer($0).parse($1)
            }
        }
    }

    @inline(__always)
    static func pure(_ value: T) -> Parser<T> {
        return Parser<T> { .success((value, $0)) }
    }

    @inline(__always)
    static func fail(_ error: ParserError) -> Parser<T> {
        return Parser<T> { _ in
            .failure(AnyParserError(original: error))
        }
    }
}
