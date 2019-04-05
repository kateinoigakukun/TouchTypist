//
//  Parser+Basic.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

func satisfyString(predicate: @escaping (Character) -> Bool) -> Parser<String> {
    return many(satisfy(predicate: predicate)).map { String($0) }
}

func char(_ c: Character) -> Parser<Character> {
    return satisfy(predicate: { $0 == c })
}

func skipSpaces() -> Parser<Void> {
    return void <^> many(char(" "))
}

func digit() -> Parser<Character> {
    return satisfy { "0"..."9" ~= $0 }
}

func number() -> Parser<Int> {
    return many(digit()).map { Int(String($0))! }
}

func token(_ string: String) -> Parser<String> {
    enum TokenError: Error { case not(String, input: String) }
    return Parser { input1 in
        guard input1.hasPrefix(string) else {
            throw TokenError.not(string, input: input1)
        }
        let input2 = input1.dropFirst(string.count)
        return (string, String(input2))
    }
}

func keyword() -> Parser<String> {
    return many(satisfy(predicate: { $0 != " " })).map { String($0) }
}

func stringLiteral() -> Parser<String> {
    let validString = satisfyString(predicate: { $0 != "\"" })
    return char("\"") *> validString <* char("\"")
}
