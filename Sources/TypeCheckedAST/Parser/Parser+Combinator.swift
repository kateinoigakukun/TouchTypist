//
//  Parser+Combinator.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//


enum ChoiceError: ParserError {
    case noMatch(ParserInput)
    var input: ParserInput {
        switch self {
        case .noMatch(let input): return input
        }
    }
}

func choice<T>(_ ps: [Parser<T>]) -> Parser<T> {
    return Parser { input in
        for p in ps {
            guard let r = try? p.parse(input).get() else { continue }
            return .success(r)
        }
        return .failure(.init(original: ChoiceError.noMatch(input)))
    }
}

func many<T>(_ p: Parser<T>, function: StaticString = #function) -> Parser<[T]> {
    return many1(p, function: function) <|> Parser.pure([])
}

func many1<T>(_ p: Parser<T>, function: StaticString = #function) -> Parser<[T]> {
    //    Notes: Beautiful impl but slow
    //    return cons <^> p <*> many(p, function: function)
    return Parser<[T]> { input in
        p.parse(input).map { r_1 in
            var list: [T] = [r_1.0]
            var tail = r_1.1
            while let r_n = try? p.parse(tail).get() {
                tail = r_n.1
                list.append(r_n.0)
            }
            return (list, tail)
        }
    }
}

enum SatisfyError: ParserError {
    case invalid(head: Character, input: ParserInput), empty(ParserInput)
    var input: ParserInput {
        switch self {
        case let .invalid(_, input): return input
        case let .empty(input): return input
        }
    }
}

func satisfy(predicate: @escaping (Character) -> Bool) -> Parser<Character> {
    return Parser { input in
        guard input.startIndex != input.text.endIndex  else {
            return .failure(.init(original: SatisfyError.empty(input)))
        }

        let head = input.text[input.startIndex]
        let index1 = input.text.index(after: input.startIndex)
        let newInput = ParserInput(previous: input, index: index1)
        guard predicate(head) else {
            return .failure(.init(original: SatisfyError.invalid(head: head, input: input)))
        }
        return .success((head, newInput))
    }
}

func orNil<T>(_ p: Parser<T>) -> Parser<T?> {
    return (Optional.some <^> p) <|> .pure(nil)
}
