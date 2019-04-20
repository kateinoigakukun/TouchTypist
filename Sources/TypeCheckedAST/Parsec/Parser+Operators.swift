//
//  Parser+Operators.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

precedencegroup MonadicPrecedenceLeft {
    associativity: left
    lowerThan: LogicalDisjunctionPrecedence
    higherThan: AssignmentPrecedence
}

precedencegroup AlternativePrecedence {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
    lowerThan: ComparisonPrecedence
}

precedencegroup ApplicativePrecedence {
    associativity: left
    higherThan: AlternativePrecedence
    lowerThan: NilCoalescingPrecedence
}

precedencegroup ApplicativeSequencePrecedence {
    associativity: left
    higherThan: ApplicativePrecedence
    lowerThan: NilCoalescingPrecedence
}

infix operator <^> : ApplicativePrecedence
infix operator <*> : ApplicativePrecedence
infix operator <* : ApplicativeSequencePrecedence
infix operator *> : ApplicativeSequencePrecedence
infix operator <|> : AlternativePrecedence
infix operator >>- : MonadicPrecedenceLeft

@inline(__always)
func <|> <T>(a: Parser<T>, b: @autoclosure @escaping () -> Parser<T>) -> Parser<T> {
    return Parser { input in
        return a.parse(input).flatMapError { _ in
            b().parse(input)
        }
    }
}

import Foundation

@inline(__always)
func <*> <A, B>(a: Parser<(A) -> B>, b: @autoclosure @escaping () -> Parser<A>) -> Parser<B> {
//    return a.flatMap { f in b().map { f($0) } }
    return Parser<B> { input in
        switch a.parse(input) {
        case .success(let (f, tailA)):
            switch b().parse(tailA) {
            case .success(let (a, tailB)):
                return .success((f(a), tailB))
            case .failure(let error):
                return .failure(error)
            }
        case .failure(let error):
            return .failure(error)
        }
    }
}

@inline(__always)
func <^> <A, B>(f: @escaping (A) -> B, p: @autoclosure @escaping () -> Parser<A>) -> Parser<B> {
    return Parser { input in
        return p().parse(input).map { (f($0), $1) }
    }
}

@inline(__always)
func >>- <A, B>(p: Parser<A>, f: @escaping (A) -> Parser<B>) -> Parser<B> {
    return p.flatMap(f)
}

@inline(__always)
func *> <A, B>(a: Parser<A>, b: Parser<B>) -> Parser<B> {
//    return const(id) <^> a <*> b
    return Parser<B> { input in
        switch a.parse(input) {
        case .success(let (_, tailA)):
            return b.parse(tailA)
        case .failure(let error):
            return .failure(error)
        }
    }
}

@inline(__always)
func <* <A, B>(a: Parser<A>, b: Parser<B>) -> Parser<A> {
//    return const <^> a <*> b
    return Parser<A> { input in
        switch a.parse(input) {
        case .success(let (resultA, tailA)):
            switch b.parse(tailA) {
            case .success(let (_, tailB)):
                return .success((resultA, tailB))
            case .failure(let error):
                return .failure(error)
            }
        case .failure(let error):
            return .failure(error)
        }
    }
}
