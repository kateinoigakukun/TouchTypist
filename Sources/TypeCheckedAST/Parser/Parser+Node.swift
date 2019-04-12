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
            skipSpaces() *> parseAttributeOrNodeOrValue() <* skipSpaces()
        )
    )
    return debugPrint(#function) *> token("(") *> node <* skipSpaces() <* token(")")
}

func parseNodeValue() -> Parser<String> {
    return debugPrint() *> (String.init <^> stringLiteral())
}

func parseAttributeOrNodeOrValue() -> Parser<AttributeOrNodeOrValue> {
    return debugPrint() *> (AttributeOrNodeOrValue.value <^> parseNodeValue())
        <|> (AttributeOrNodeOrValue.attribute <^> parseAttribute())
        <|> (AttributeOrNodeOrValue.node <^> parseNode())
}

func parseAttribute() -> Parser<Attribute> {
    return debugPrint() *> choice(
        [
            Attribute.range <^> token("range=") *> parseRange(),
            Attribute.type <^> token("type=") *> parseTypeName(),
            Attribute.location <^> token("location=") *> parsePoint(),
            const(Attribute.nothrow) <^> token("nothrow"),
            curry(Attribute.decl) <^> token("decl=") *> parseDecl(),
            Attribute.__unknown <^> parseUnknown(),
        ]
    )
}

func unknownValue() -> Parser<String> {
    // FIXME
    func shouldBeParenContent(c: Character) -> Bool {
        return c != "(" && c != ")"
            && c != "[" && c != "]"
            && c != "<" && c != ">"
            && c != " " && c != "\n"
    }
    let parenContent: Parser<String> = satisfyString(predicate: {
        return shouldBeParenContent(c: $0)
    })
    let bracketBox = curry(join4)
        <^> parenContent
        <*> token("[")
        <*> parenContent
        <*> (curry(join3) <^> (unknownValue() <|> .pure(.init())) <*> parenContent <*> token("]"))
    let thanBox = curry(join4)
        <^> parenContent
        <*> token("<")
        <*> parenContent
        <*> (curry(join3) <^> (unknownValue() <|> .pure(.init())) <*> parenContent <*> token(">"))
    // FIXME
    let parenBox = curry(join4)
        <^> parenContent
        <*> token("(")
        <*> parenContent
        <*> (curry(join3) <^> (unknownValue() <|> .pure(.init())) <*> parenContent <*> token(")"))
    return ({ String($0.flatMap { $0 }) } <^> many1(
        (parenBox <|> bracketBox <|> thanBox)
        )) <|> satisfyString(predicate: {
            return $0 != " " && $0 != "(" && $0 != ")" && $0 != "\n"
        })
}

func parseUnknown() -> Parser<UnknownAttribute> {
    let value = (String.init(describing:) <^> parseRange())
        <|> (String.init(describing:) <^> parseTypeName())
        <|> (String.init(describing:) <^> parsePoint())
        <|> (String.init(describing:) <^> parseElements())
        <|> (String.init(describing:) <^> parseDecl())
        <|> String.init <^> stringLiteral()
        <|> String.init <^> unknownValue()
    return curry(UnknownAttribute.init)
        <^> (String.init <^> (satisfyString(predicate: {
            !["(", ")", "=", "[", "]", " ", "\n"].contains($0)
        }) >>- notEmpty))
        <*> (Optional.some <^> (token("=") *> value) <|> .pure(nil))
}

let join4: (String, String, String, String) -> String = { $0 + $1 + $2 + $3 }
let join3: (String, String, String) -> String = { $0 + $1 + $2 }
let join2: (String, String) -> String = { $0 + $1 }

func declSignature() -> Parser<String> {
    // foo(arg:)
    let funcSig = curry(join4) <^> keyword()
        <*> token("(")
        <*> (satisfyString(predicate: { $0 != " " && $0 != ")" }))
        <*> token(")")
    // (file)
    let fileSig = curry(join3) <^> token("(")
        <*> keyword() <*> token(")")
    let sig = funcSig <|> fileSig
        <|> (satisfyString(predicate: {
            !["(", ")", "[", "]", ".", " ", "\n"].contains($0)
        }))
    func rec() -> Parser<[String]> {
        return cons
            <^> (curry(join2) <^> token(".") <*> sig)
            <*> (rec() <|> Parser.pure([]))
    }

    let atSig = curry(join2) <^> token("@")
        <*> ({ $0.description } <^> parsePoint())

    return curry({ String($0.flatMap { $0 }) + $1 })
        <^> (cons <^> keyword() <*> rec())
        <*> (atSig <|> .pure(.init()))
}

func parseDecl() -> Parser<Decl> {
    let signatures = many1(skipSpaces() *> declSignature() <* skipSpaces())
    return curry(Decl.init)
        <^> (curry({ String(String($0.joined(separator: " "))) })
            <^> signatures) <* skipSpaces()
        <*> (Optional.some <^> parseDeclSubstitution() <|> Parser.pure(nil))
}

func parenRec() -> Parser<String> {
    let parenContent = satisfyString(predicate: {
        $0 != "(" && $0 != ")" && $0 != "[" && $0 != "]"
    })
    let bracketBox = curry(join3)
        <^> token("[")
        <*> parenContent
        <*> (curry(join3) <^> (parenRec() <|> .pure(.init())) <*> parenContent <*> token("]"))

    // FIXME
    let parenBox = curry(join4)
        <^> Parser.pure(" ")
        <*> token("(")
        <*> parenContent
        <*> (curry(join3) <^> (parenRec() <|> .pure("")) <*> parenContent <*> token(")"))
    return { String($0.joined()) } <^> many(
        skipSpaces() *> (parenBox <|> bracketBox) <* skipSpaces()
    )
}

func parseDeclSubstitution() -> Parser<String> {
    return String.init <^> (
        curry(join3) <^> token("[with") <*> parenRec() <*> token("]")
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
        ({ [String($0)] } <^> satisfyString(predicate: { $0 != "]" }))
        <* char("]")
}
