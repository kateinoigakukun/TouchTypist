//
//  Parser+Basic.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

func satisfyString(predicate: @escaping (Character) -> Bool) -> Parser<String> {
    return many(satisfy(predicate: {
        if (predicate($0) && $0 == ")") {
            return predicate($0)
        }
        return predicate($0)
    })).map { String($0) }
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
    enum TokenError: Error { case not(String, input: String, file: StaticString, function: StaticString, line: Int) }
    return Parser { input1 in
        guard input1.hasPrefix(string) else {
            throw TokenError.not(string, input: input1, file: file, function: function, line: line)
        }
        let input2 = input1.dropFirst(string.count)
        return (string, String(input2))
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
    func notEmpty(_ s: String) -> Parser<String> {
        guard !s.isEmpty else {
            return .fail(KeywordError.empty)
        }
        return .pure(s)
    }
    return satisfyString(predicate: {
        !(registeredSymbol() + [" ", "\n"]).contains($0)
    }) >>- notEmpty
}

func stringLiteral() -> Parser<String> {
    let validString = satisfyString(predicate: { $0 != "\"" })
    return char("\"") *> validString <* char("\"")
}
