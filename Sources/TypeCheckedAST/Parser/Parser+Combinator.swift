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

func many<T>(_ p: Parser<T>) -> Parser<[T]> {
    return many1(p) <|> Parser.pure([])
}

func many1<T>(_ p: Parser<T>) -> Parser<[T]> {
    //    Notes: Beautiful impl but slow
    //    return cons <^> p <*> many(p)
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
    case invalid(head: Unicode.Scalar, input: String.UnicodeScalarView), empty
}

func satisfy(predicate: @escaping (Unicode.Scalar) -> Bool) -> Parser<Unicode.Scalar> {
    return Parser { input in
        guard let head = input.first else {
            throw SatisfyError.empty
        }

        let index1 = input.index(after: input.startIndex)
        let newInput = input[index1..<input.endIndex]
        guard predicate(head) else {
            throw SatisfyError.invalid(head: head, input: input)
        }
        return (head, String(newInput).unicodeScalars)
    }
}

var _debugPrintStack: [String] = []

func debugPrint(_ id: String = " ") -> Parser<Void> {
    return Parser {
        _debugPrintStack.append("- [\(id)]: \($0)")
        return ((), $0)
    }
}

func debugPrintIfThrow<T>(_ id: String = " ", _ p: Parser<T>) -> Parser<T> {
    return Parser {
        do {
            return try p.parse($0)
        } catch {
            print("- [\(id)]: \(error)")
            throw error
        }
    }
}

public func benchmark(text: String) {
    func m(_ p: Parser<RawNode>) -> Parser<[RawNode]> {
        return cons <^> p <*> m(p)
    }
    do {
        let (nodeList, tail) = try m(skipSpaces() *> parseNode() <* skipSpaces())
            .parse(text)
        assert(nodeList.count == 0)
        assert(tail.count == 0)
    } catch {
        print(_debugPrintStack.last?.prefix(5000))
        print(String(describing: error).prefix(5000))
    }
}
