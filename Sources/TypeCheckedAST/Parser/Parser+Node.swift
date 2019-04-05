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
        <*> many(skipSpaces() *> parseAttribute())
        <*> skipSpaces() *> many(skipSpaces() *> parseNode()) <* token(")")
}

func parseAttribute() -> Parser<Attribute> {
    return choice(
        [
            Attribute.range <^> token("range=") *> parseRange(),
            Attribute.type <^> token("type=") *> parseTypeName(),
            Attribute.location <^> token("location=") *> parsePoint(),
            Attribute.argLabels <^> token("arg_labels=") *> satisfyString(predicate: { $0 != " " }),
            const(Attribute.nothrow) <^> token("nothrow"),
            Attribute.__unknown <^> parseUnknown(),
        ]
    )
}

func parseUnknown() -> Parser<UnknownAttribute> {
    return curry(UnknownAttribute.init)
        <^> keyword() *> token("=")
        <*> (Optional.some <^> keyword() <|> .pure(nil))
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


func parseTypeName() -> Parser<String> {
    let validString = satisfyString(predicate: { $0 != "'" })
    return char("\'") *> validString <* char("\'")
}
