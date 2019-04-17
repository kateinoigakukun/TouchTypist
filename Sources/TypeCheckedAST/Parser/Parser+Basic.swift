//
//  Parser+Basic.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

func satisfyString(predicate: @escaping (Character) -> Bool) -> Parser<String> {
    return many(satisfy(predicate: { predicate($0) }))
        .map { String($0) }
}

func char(_ c: Character) -> Parser<Character> {
    return satisfy(predicate: { $0 == c })
}

func skipSpaces() -> Parser<Void> {
    return void <^> many(char(" ") <|> char("\n"))
}

func digit() -> Parser<Character> {
    return satisfy { "0"..."9" ~= $0 }
}

func number() -> Parser<Int> {
    return many1(digit()).map { Int(String($0))! }
}

enum TokenError: ParserError {
    case not(
        String,
        input: ParserInput,
        text: String.SubSequence,
        file: StaticString, function: StaticString, line: Int
    ),
    outOfBounds(String, input: ParserInput)

    var input: ParserInput {
        switch self {
        case .not(_, let input, _, _, _, _):
            return input
        case .outOfBounds(_, let input):
            return input
        }
    }
}

func token(_ string: String, file: StaticString = #file, function: StaticString = #function, line: Int = #line) -> Parser<String> {
    return Parser { input1 in
        guard let endIndex = input1.text.index(input1.startIndex, offsetBy: string.count, limitedBy: input1.text.endIndex) else {
            return .failure(.init(original: TokenError.outOfBounds(string, input: input1)))
        }
        let prefix = input1.text[input1.startIndex..<endIndex]
        guard prefix == string else {
            let error = TokenError.not(
                string, input: input1,
                text: input1.text[input1.startIndex...],
                file: file, function: function, line: line
            )
            return .failure(.init(original: error))
        }
        let newStartIndex = input1.text.index(input1.startIndex, offsetBy: string.count)
        let input2 = ParserInput(
            previous: input1,
            index: newStartIndex
        )
        return .success((String(prefix), input2))
    }
}

func registeredSymbol() -> [Character] {
    return ["(", ")", "=", "[", "]", "."]
}

func notEmpty(_ s: String) -> Parser<String> {
    return Parser { input in
        guard !s.isEmpty else {
            return .failure(.init(original: KeywordError.empty(input)))
        }
        return .success((s, input))
    }
}

enum KeywordError: ParserError {
    case empty(ParserInput)
    var input: ParserInput {
        switch self {
        case .empty(let input): return input
        }
    }
}
func keyword() -> Parser<String> {

    return satisfyString(predicate: { k in
        !(registeredSymbol() + [" ", "\n"]).contains(k)
    }) >>- notEmpty
}

func stringLiteral() -> Parser<String> {
    let quote: [Character] = ["\"", "'"]
    let textParsers = quote.map { q -> (Character, Parser<String>) in
        let text = Parser<String> { input in
            var index = input.startIndex
            var char: Character { return input.text[index] }
            var nextChar: Character {
                let nextIndex = input.text.index(after: index)
                return input.text[nextIndex]
            }
            while index != input.text.endIndex {
                if char == q { break }
                if char == "\\" && nextChar == q {
                    index = input.text.index(after: index)
                }
                index = input.text.index(after: index)
            }
            let result = String(input.text[input.startIndex..<index])
            let newInput = ParserInput(previous: input, index: index)
            return .success((result, newInput))
        }
        return (q, text)
    }
    return choice(textParsers.map { (q, parser) in
        return char(q) *> parser <* char(q)
    })
}
