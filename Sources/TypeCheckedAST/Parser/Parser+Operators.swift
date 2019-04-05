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


func <|> <T>(a: Parser<T>, b: @autoclosure @escaping () -> Parser<T>) -> Parser<T> {
    return Parser { input in
        do {
            return try a.parse(input)
        } catch {
            return try b().parse(input)
        }
    }
}

func <*> <A, B>(a: Parser<(A) -> B>, b: @autoclosure @escaping () -> Parser<A>) -> Parser<B> {
    return a.flatMap { f in b().map { f($0) } }
}

func <^> <A, B>(f: @escaping (A) -> B, p: Parser<A>) -> Parser<B> {
    return p.map(f)
}

func >>- <A, B>(p: Parser<A>, f: @escaping (A) -> Parser<B>) -> Parser<B> {
    return p.flatMap(f)
}

func *> <A, B>(a: Parser<A>, b: Parser<B>) -> Parser<B> {
    return const(id) <^> a <*> b
}

func <* <A, B>(a: Parser<A>, b: Parser<B>) -> Parser<A> {
    return const <^> a <*> b
}
