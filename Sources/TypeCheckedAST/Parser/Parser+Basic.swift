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

func token(_ string: String, file: StaticString = #file, function: StaticString = #function, line: Int = #line) -> Parser<String> {
    enum TokenError: Error {
        case not(
            String,
            input: ParserInput,
            text: String.SubSequence,
            file: StaticString, function: StaticString, line: Int
        ),
        outOfBounds
    }
    return Parser { input1 in
        guard let endIndex = input1.text.index(input1.startIndex, offsetBy: string.count, limitedBy: input1.text.endIndex) else {
            throw TokenError.outOfBounds
        }
        let prefix = input1.text[input1.startIndex..<endIndex]
        guard prefix == string else {
            throw TokenError.not(
                string, input: input1,
                text: input1.text[input1.startIndex...],
                file: file, function: function, line: line
            )
        }
        let newStartIndex = input1.text.index(input1.startIndex, offsetBy: string.count)
        let input2 = ParserInput(
            text: input1.text,
            startIndex: newStartIndex
        )
        return (String(prefix), input2)
    }
}

func registeredSymbol() -> [Character] {
    return ["(", ")", "=", "[", "]", "."]
}

func notEmpty(_ s: String) -> Parser<String> {
    guard !s.isEmpty else {
        return .fail(KeywordError.empty)
    }
    return .pure(s)
}

enum KeywordError: Error { case empty }
func keyword() -> Parser<String> {

    return satisfyString(predicate: { k in
        !(registeredSymbol() + [" ", "\n"]).contains(k)
    }) >>- notEmpty
}

func stringLiteral() -> Parser<String> {
    let validString = satisfyString(predicate: { $0 != "\"" })
    return char("\"") *> validString <* char("\"")
}
