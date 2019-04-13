//
//  Parser+Combinator.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//


enum ChoiceError: Error { case noMatch }

func choice<T>(_ ps: [Parser<T>]) -> Parser<T> {
    return Parser { content in
        for p in ps {
            guard let r = try? p.parse(content) else { continue }
            return r
        }
        throw ChoiceError.noMatch
    }
}

func debugChoice<T>(_ ps: [Parser<T>], function: StaticString = #function) -> Parser<T> {
    return Parser { content in
        for (i, p) in ps.enumerated() {
            guard let r = try? p.parse(content) else { continue }
//            print("[choice in \(function)] selected \(i)")
            return r
        }
        throw ChoiceError.noMatch
    }
}

func many<T>(_ p: Parser<T>, function: StaticString = #function) -> Parser<[T]> {
    return many1(p, function: function) <|> Parser.pure([])
}

func many1<T>(_ p: Parser<T>, function: StaticString = #function) -> Parser<[T]> {
    //    Notes: Beautiful impl but slow
    return Parser<[T]> { content in
        let r_1 = try p.parse(content)
        var list: [T] = [r_1.0]
        var tail = r_1.1
        while let r_n = try? p.parse(tail) {
            tail = r_n.1
            list.append(r_n.0)
        }
        return (list, tail)
    }
}

enum SatisfyError: Error {
    case invalid(head: Character, input: ParserInput), empty
}

func satisfy(predicate: @escaping (Character) -> Bool) -> Parser<Character> {
    return Parser { input in
        guard input.startIndex != input.text.endIndex  else {
            throw SatisfyError.empty
        }

        let head = input.text[input.startIndex]
        let index1 = input.text.index(after: input.startIndex)
        let newInput = ParserInput(text: input.text, startIndex: index1)
        guard predicate(head) else {
            throw SatisfyError.invalid(head: head, input: input)
        }
        return (head, newInput)
    }
}

func orNil<T>(_ p: Parser<T>) -> Parser<T?> {
    return (Optional.some <^> p) <|> .pure(nil)
}

var _debugPrintStack: [String] = []

func debugPrint(_ id: String = #function) -> Parser<Void> {
    return Parser {
//        print("- [\(id)]: \($0.current)")
        return ((), $0)
    }
}

var latestDebugMessage: String?
func trackLatestDebugMessage(_ id: String = #function) -> Parser<Void> {
    return Parser {
        latestDebugMessage = "- [\(id)]: \($0.current)"
        return ((), $0)
    }
}

func debugPrintIfThrow<T>(_ id: String = " ", _ p: Parser<T>) -> Parser<T> {
    return Parser {
        do {
            return try p.parse($0)
        } catch {
//            print("- [\(id)]: \(error)")
            throw error
        }
    }
}
