//
//  Parser+Combinator.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//


enum ChoiceError: Error { case noMatch }

func choice<T>(_ ps: [Parser<T>]) -> Parser<T> {
    if ps.isEmpty { return Parser.fail(ChoiceError.noMatch) }
    var ps = ps
    let p = ps.removeFirst()
    return p <|> choice(ps)
}

func many<T>(_ p: Parser<T>) -> Parser<[T]> {
    return many1(p) <|> Parser.pure([])
}

func many1<T>(_ p: Parser<T>) -> Parser<[T]> {
    return cons <^> p <*> many(p)
}

enum SatisfyError: Error { case invalid, empty }

func satisfy(predicate: @escaping (Character) -> Bool) -> Parser<Character> {
    return Parser { input in
        guard !input.isEmpty else {
            throw SatisfyError.empty
        }
        var input = input
        let head = input.removeFirst()
        guard predicate(head) else {
            throw SatisfyError.invalid
        }
        return (head, input)
    }
}
