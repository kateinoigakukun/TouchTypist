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
        <*> skipSpaces() *> many(skipSpaces() *> parseNode()) <* skipSpaces() <* token(")")
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
        <^> keyword() *> token("=")
        <*> (Optional.some <^> keyword() <|> .pure(nil))
}

func parseDecl() -> Parser<Decl> {
    func declSignatureRec() -> Parser<[String]> {
        return cons
            <^> char(".") *> (
                (
                    keyword()
                        <|> (
                            curry({ $0 + $1 + $2 + $3 })
                                <^> keyword()
                                <*> char("(")
                                <*> keyword()
                                <*> char(")")
                        )
                        <|> (char("(") *> keyword() <* char(")"))
                )
            )
            <*> (declSignatureRec() <|> Parser.pure([]))
    }
    return curry(Decl.init) <^>
        (
            curry(Array.joined)
                <^> (cons <^> keyword() <*> declSignatureRec())
                <*> Parser.pure(", ")
    )
//        <*> skipSpaces()
//        *> (
//            (
//                const("__substitution__") <^> parseDeclSubstitution()
//            ) <|> Parser.pure(nil)
//    )
}

func parseDeclSubstitution() -> Parser<Void> {
    func parenNest() -> Parser<Void> {
        return void <^> many(
            skipSpaces()
                *> token("(")
                *> satisfyString(predicate: { $0 != "(" && $0 != ")" })
                <* (
                    void
                    <^> token(")")
                    <|> (
                        parenNest()
                            <* (void <^> token(")"))
                    )
                )
                <* skipSpaces()
        )
    }
    return token("[with") *> parenNest() <* token("]")
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
