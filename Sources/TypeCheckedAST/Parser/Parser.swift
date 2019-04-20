//
//  Parser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//


class Box<T> {
    let value: T
    init(_ value: T) {
        self.value = value
    }
}

extension Box where T == String {
    var endIndex: String.Index {
        return value.endIndex
    }
    subscript(i: String.Index) -> Character {
        return value[i]
    }
}
struct ParserInput {
    let text: Box<String>
    let startIndex: String.Index
    let debugContext: DebugContext?

    init(previous: ParserInput, index: String.Index, debugContext: DebugContext? = nil) {
        self.text = previous.text
        self.startIndex = index
        self.debugContext = debugContext ?? previous.debugContext
    }

    static func root(from text: String) -> ParserInput {
        return ParserInput(text: text, startIndex: text.startIndex)
    }

    fileprivate init(text: String, startIndex: String.Index) {
        self.text = .init(text)
        self.startIndex = startIndex
        self.debugContext = nil
    }

    var current: String {
        return String(text.value[startIndex...])
    }
}

import Foundation

protocol ParserError: LocalizedError {
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
            switch self.parse($0) {
            case .success(let (result, input2)):
                return .success((transformer(result), input2))
            case .failure(let error):
                return .failure(error)
            }
        }
    }

    @inline(__always)
    func flatMap<U>(_ transformer: @escaping (T) -> Parser<U>) -> Parser<U> {
        return Parser<U> { input1 in
            switch self.parse(input1) {
            case .success(let (result, input2)):
                return transformer(result).parse(input2)
            case .failure(let error):
                return .failure(error)
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
