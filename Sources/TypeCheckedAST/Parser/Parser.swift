//
//  Parser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

struct Parser<T> {
    typealias Input = String.UnicodeScalarView
    let parse: (Input) throws -> (T, Input)

    func parse(_ string: String) throws -> (T, Input) {
        return try self.parse(string.unicodeScalars)
    }

    @inline(__always)
    func map<U>(_ transformer: @escaping (T) throws -> U) -> Parser<U> {
//        return try flatMap { try .pure(transformer($0)) }
        return Parser<U> {
            let (result1, tail1) = try self.parse($0)
            return (try transformer(result1), tail1)
        }
    }

    @inline(__always)
    func flatMap<U>(_ transformer: @escaping (T) throws -> Parser<U>) -> Parser<U> {
        return Parser<U> { input1 in
            let (result1, input2) = try self.parse(input1)
            return try transformer(result1).parse(input2)
        }
    }

    @inline(__always)
    static func pure(_ value: T) -> Parser<T> {
        return Parser<T> { (value, $0) }
    }

    @inline(__always)
    static func fail(_ error: Error) -> Parser<T> {
        return Parser<T> { _ in throw error }
    }
}
