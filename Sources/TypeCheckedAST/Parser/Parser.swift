//
//  Parser.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

struct Parser<T> {
    let parse: (String) throws -> (T, String)

    func map<U>(_ transformer: @escaping (T) throws -> U) rethrows -> Parser<U> {
        return try flatMap { try .pure(transformer($0)) }
    }

    func flatMap<U>(_ transformer: @escaping (T) throws -> Parser<U>) rethrows -> Parser<U> {
        return Parser<U> { input1 in
            let (result1, input2) = try self.parse(input1)
            return try transformer(result1).parse(input2)
        }
    }

    static func pure(_ value: T) -> Parser<T> {
        return Parser<T> { (value, $0) }
    }

    static func fail(_ error: Error) -> Parser<T> {
        return Parser<T> { _ in throw error }
    }
}
