//
//  Parser+Node.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import Curry

func parseNode() -> Parser<RawNode> {
    return token("(") *>
        (curry(RawNode.init)
            <^> keyword()
            <*> skipSpaces() *> (
                Optional.some
                    <^> stringLiteral()
                    <|> Parser.pure(nil)
            )
            <*> many(
                skipSpaces()
                    *> ((AttributeOrNode.attribute <^> parseAttribute())
                        <|> (AttributeOrNode.node <^> parseNode()))
                    <* skipSpaces()
            )
//            <*> skipSpaces() *> many(skipSpaces() *> parseNode()) <* skipSpaces()
        )
        <* skipSpaces() <* token(")")
}

func parseAttribute() -> Parser<Attribute> {
    return choice(
        [
            Attribute.range <^> token("range=") *> parseRange(),
            Attribute.type <^> token("type=") *> parseTypeName(),
            Attribute.location <^> token("location=") *> parsePoint(),
            const(Attribute.nothrow) <^> token("nothrow"),
            curry(Attribute.decl) <^> token("decl=") *> parseDecl(),
            Attribute.__unknown <^> parseUnknown(),
            Attribute.__unknownMark <^> keyword()
        ]
    )
}

func parseUnknown() -> Parser<UnknownAttribute> {
    return curry(UnknownAttribute.init)
        <^> keyword() <* token("=")
        <*> (Optional.some <^> keyword() <|> .pure(nil))
}

let join4: (String, String, String, String) -> String = { $0 + $1 + $2 + $3 }
let join3: (String, String, String) -> String = { $0 + $1 + $2 }
let join2: (String, String) -> String = { $0 + $1 }

func declSignature() -> Parser<String> {
    func rec() -> Parser<[String]> {
        let word = (
            curry(join4)
                <^> keyword()
                <*> token("(")
                <*> keyword()
                <*> token(")")
            )
            <|> (
                curry(join3)
                    <^> token("(")
                    <*> keyword()
                    <*> token(")")
            )
            <|> keyword()
        return cons
            <^> (curry({ $0 + $1 }) <^> token(".") <*> word)
            <*> (rec() <|> Parser.pure([]))
    }
    return curry(Array.joined)
        <^> (cons <^> keyword() <*> rec())
        <*> Parser.pure("")
}

func parseDecl() -> Parser<Decl> {
    return curry(Decl.init) <^>
        (
            curry(Array.joined)
                <^> many(skipSpaces() *> declSignature() <* skipSpaces())
                <*> Parser.pure(" ")
        )
        <*> skipSpaces()
        *> (
            (Optional.some <^> parseDeclSubstitution())
                <|> Parser.pure(nil)
    )
}

func parseDeclSubstitution() -> Parser<String> {
    func parenNest() -> Parser<String> {
        return { $0.joined(separator: "") } <^> many(
            skipSpaces()
                *> (
                    curry(join4)
                        <^> Parser.pure(" ")
                        <*> token("(")
                        <*> satisfyString(predicate: { $0 != "(" && $0 != ")" })
                        <*> (token(")")
                            <|> (curry(join2)
                                <^> parenNest()
                                <*> (token(")")))
                    )
                )
                <* skipSpaces()
        )
    }
    return curry(join3) <^> token("[with") <*> parenNest() <*> token("]")
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
