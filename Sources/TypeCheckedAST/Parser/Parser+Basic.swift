//
//  Parser+Basic.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

func satisfyString(predicate: @escaping (Unicode.Scalar) -> Bool) -> Parser<String.UnicodeScalarView> {
    return many(satisfy(predicate: { predicate($0) }))
        .map { String.UnicodeScalarView($0) }
}

func char(_ c: Unicode.Scalar) -> Parser<Unicode.Scalar> {
    return satisfy(predicate: { $0 == c })
}

func skipSpaces() -> Parser<Void> {
    return void <^> many(char(" ") <|> char("\n"))
}

func digit() -> Parser<Unicode.Scalar> {
    return satisfy { "0"..."9" ~= $0 }
}

func number() -> Parser<Int> {
    return many1(digit()).map { Int(String(String.UnicodeScalarView($0)))! }
}

func token(_ string: String, file: StaticString = #file, function: StaticString = #function, line: Int = #line) -> Parser<String.UnicodeScalarView> {
    enum TokenError: Error {
        case not(
            String,
            input: String.UnicodeScalarView,
            file: StaticString, function: StaticString, line: Int
        )
    }
    return Parser { input1 in
        let prefix = input1.prefix(string.count)
        guard prefix.elementsEqual(string.unicodeScalars) else {
            throw TokenError.not(string, input: input1, file: file, function: function, line: line)
        }
        let input2 = input1.suffix(
            from: input1.index(input1.startIndex, offsetBy: string.count)
        )
        return (String.UnicodeScalarView(prefix), String.UnicodeScalarView(input2))
    }
}

func registeredSymbol() -> [Unicode.Scalar] {
    return ["(", ")", "=", "[", "]", "."]
}

func notEmpty(_ s: String.UnicodeScalarView) -> Parser<String.UnicodeScalarView> {
    guard !s.isEmpty else {
        return .fail(KeywordError.empty)
    }
    return .pure(s)
}

enum KeywordError: Error { case empty }
func keyword() -> Parser<String.UnicodeScalarView> {

    return satisfyString(predicate: {
        !(registeredSymbol() + [" ", "\n"]).contains($0)
    }) >>- notEmpty
}

func stringLiteral() -> Parser<String.UnicodeScalarView> {
    let validString = satisfyString(predicate: { $0 != "\"" })
    return char("\"") *> validString <* char("\"")
}
