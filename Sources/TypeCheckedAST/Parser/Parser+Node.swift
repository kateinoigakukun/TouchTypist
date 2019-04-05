//
//  Parser+Node.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import Curry

func parseNode() -> Parser<RawNode> {
    return curry(RawNode.init)
        <^> token("(") *> keyword()
        <*> skipSpaces() *> (
            Optional.some
                <^> stringLiteral()
                <|> Parser.pure(nil)
        )
        <*> skipSpaces() *> many(parseAttribute())
        <*> skipSpaces() *> many(parseNode()) <* token(")")
}

func parseAttribute() -> Parser<Attribute> {
    return choice(
        [Attribute.range <^> token("range") *> token("=") *> parseRange()]
    )
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
        <^> satisfyString(predicate: { $0 != ":" })
        <*> token(":") *> number()
        <*> token(":") *> number()
}
