//
//  Parser+Node.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import Curry

struct IndentError: ParserError {
    let input: ParserInput
}

func parseNode(depth: Int = 0) -> Parser<DumpedNode> {
    let node = (curry(DumpedNode.init)
        <^> (String.init <^> keyword())
        <*> many(
            parseNodeContent(depth: depth + 1) <* skipSpaces()
        )
    )
    let head = Parser<Void> { input in
        if input.startIndex == input.text.value.startIndex {
            return .success(((), input))
        }
        let beforeIndex = input.text.value.index(before: input.startIndex)
        let before = input.text.value[beforeIndex]
        guard before == "\n" else {
            return .success(((), input))
        }
        for i in 0..<(depth * 2) {
            let index = input.text.value.index(input.startIndex, offsetBy: i)
            let char = input.text[index]
            guard char == " " else {
                return .failure(.init(original: IndentError(input: input)))
            }
        }
        return .success(((), input))
    }
    return trackLatestDebugMessage() *> head *> token("(") *> node <* skipSpaces() <* token(")")
}

func parseNodeValue() -> Parser<String> {
    return (String.init <^> stringLiteral())
}

func parseNodeContent(depth: Int) -> Parser<NodeContent> {
    return (NodeContent.value <^> parseNodeValue())
        <|> (NodeContent.attribute <^> (skipSpaces() *> parseAttribute()))
        <|> (NodeContent.node <^> parseNode(depth: depth))
        <|> parseUnknownValue()
        <|> fallback()
}

func fallback() -> Parser<NodeContent> {
    return NodeContent.unknown <^> (char("(") *> unknownMark() <* char(")"))
}

func parseUnknownValue() -> Parser<NodeContent> {
    return choice(
        [
            NodeContent.unknown <^> unknownValue(),
            NodeContent.unknown <^> (String.init <^> unknownChar()),
        ]
    )
}

func parseAttribute() -> Parser<Attribute> {
    return choice(
        [
            (Attribute.range <^> token("range=") *> parseRange()),
            (Attribute.type <^> token("type=") *> parseTypeName()),
            (Attribute.location <^> token("location=") *> parsePoint()),
        ]
    )
}

func unknownMark() -> Parser<String> {
    return satisfyString(predicate: { $0 != "(" && $0 != ")" }) >>- notEmpty
}

func unknownChar() -> Parser<Character> {
    return satisfy(predicate: { !["(", ")"].contains($0) })
}

enum BoxParsingError: ParserError {
    case breakParsingContent(ParserInput)
    var input: ParserInput {
        switch self {
        case .breakParsingContent(let input): return input
        }
    }
}

func parseBox(left: Character, right: Character) -> Parser<String> {
    let contentText = satisfyString(predicate: {
        return ![left, right, "\n"].contains($0)
    })
    let notEmpty = Parser<Void> { input in
        if input.startIndex == input.text.endIndex
            || input.text.value[input.startIndex] == right {
            return .failure(.init(original: BoxParsingError.breakParsingContent(input)))
        } else {
            return .success(((), input))
        }
    }
    let content = { $0.joined() } <^> many(notEmpty *> (parseBox(left: left, right: right) <|> contentText))
    return curry({ String($0) + $1 + String($2) }) <^> char(left) <*> content <*> char(right)
}

func unknownValue() -> Parser<String> {
    let boxParen: [(Character, Character)] = [
        ("(", ")")//, ("[", "]"), ("<", ">")
    ]
    let chars = boxParen.flatMap { [$0.0, $0.1] }
        + [Character("\n"), Character(" ")]
    let text = satisfyString(predicate: { !chars.contains($0) })
    let box = choice(boxParen.map { parseBox(left: $0.0, right: $0.1) })
    return curry({ $0 + $1 + $2 })
        <^> text <*> box <*> text
}

func parseRange() -> Parser<Range> {
    return token("[") *>
        (
            curry(Range.init)
                <^> parsePoint() <* token(" - ")
                <*> parsePoint()
        )
        <* token("]")
}

func parsePoint() -> Parser<Point> {
    return curry(Point.init)
        <^> (
          String.init <^> satisfyString(predicate: {
            $0 != ":" && $0 != "\n" && $0 != " "
          })
        )
        <*> token(":") *> number()
        <*> token(":") *> number()
}


func parseTypeName() -> Parser<String> {
    let validString = satisfyString(predicate: { $0 != "'" })
    return char("\'") *> validString <* char("\'")
}

func parseElements() -> Parser<[String]> {
    return char("[") *>
        ({ [$0] } <^> satisfyString(predicate: { $0 != "]" }))
        <* char("]")
}
