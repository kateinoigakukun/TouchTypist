//
//  Parser+Node.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import Curry

func parseNode() -> Parser<RawNode> {
    let node = (curry(RawNode.init)
        <^> (String.init <^> keyword())
        <*> many(
            skipSpaces() *> parseNodeContent() <* skipSpaces()
        )
    )
    return trackLatestDebugMessage() *> token("(") *> node <* skipSpaces() <* token(")")
}

func parseNodeValue() -> Parser<String> {
    return (String.init <^> stringLiteral())
}

func parseNodeContent() -> Parser<NodeContent> {
    return (NodeContent.value <^> parseNodeValue())
        <|> (NodeContent.attribute <^> parseAttribute())
        <|> parseUnknownValue()
        <|> (NodeContent.node <^> parseNode())
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
        return ![left, right].contains($0) && $0 != "\n"
    })
    let notEmpty = Parser<Void> { input in
        return .failure(.init(original: BoxParsingError.breakParsingContent(input)))
    }
    let content = { $0.joined() } <^> many(notEmpty *> (parseBox(left: left, right: right) <|> contentText))
    return curry({ String($0) + $1 + String($2) }) <^> char(left) <*> content <*> char(right)
}

func unknownValue() -> Parser<String> {
    let boxParen: [(Character, Character)] = [
        ("(", ")")//, ("[", "]"), ("<", ">")
    ]
    let chars = boxParen.flatMap { [$0.0, $0.1] } + [Character("\n")]
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

func parsePoint() -> Parser<Range.Point> {
    return curry(Range.Point.init)
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
