import Curry

public indirect enum Type: Equatable, CustomStringConvertible {
    case function(FunctionType)
    case tuple([Type])
    case nominal(String)
    case generic(GenericType)
    case `inout`(Type)
    case inner(parent: Type, Type)

    public var description: String {
        switch self {
        case .function(let function):
            return function.description
        case .tuple(let types):
            return "(\(types.map { $0.description }.joined(separator: ", ")))"
        case .nominal(let type):
            return type
        case .generic(let genericType):
            return genericType.description
        case .inout(let type):
            return "inout \(type.description)"
        case .inner(let parent, let type):
            return "\(parent.description).\(type.description)"
        }
    }
}

public struct FunctionType: Equatable, CustomStringConvertible {
    public let isEscaping: Bool
    public let input: [Type]
    public let isThrowable: Bool
    public let output: Type

    public var description: String {
        var result: String = ""
        if isEscaping {
            result += "@escaping "
        }
        result += "\(Type.tuple(input)) "
        if isThrowable {
            result += "throws -> \(output)"
        } else {
            result += "-> \(output)"
        }
        return result
    }
}

public struct GenericType: Equatable, CustomStringConvertible {
    public let name: String
    public let parameters: [Type]

    public var description: String {
        return "\(name)<\(parameters.map { $0.description }.joined(separator: ", "))>"
    }
}

public func parseFunctionType(_ signature: String) throws -> FunctionType {
    return try parseFunctionType().parse(.root(from: signature)).get().0
}

func parseType() -> Parser<Type> {
    let type = choice(
        [
            Type.function <^> parseFunctionType(),
            Type.tuple <^> parseTuple(),
            Type.generic <^> parseGenericType(),
            Type.nominal <^> parseNominal(),
            parseEmptyTuple()
        ]
    )
    
    let isInout = (const(true) <^> token("inout") <* skipSpaces()) <|> .pure(false)
    let inner = Optional.some <^> (token(".") *> parseType()) <|> .pure(nil)
    return curry({ isInout, type, inner in
        let inouted = isInout ? .inout(type) : type
        if let inner = inner {
            return .inner(parent: inouted, inner)
        } else {
            return inouted
        }
    }) <^> isInout <*> type <*> inner
}

func parseEmptyTuple() -> Parser<Type> {
    return const(.nominal("Void")) <^> token("()")
}

func parseInnerType() -> Parser<Type> {
    return curry(Type.inner)
        <^> parseType() <* token(".")
        <*> parseType()
}

func parseNominal() -> Parser<String> {
    return satisfyString(predicate: {
        !["(", ")", "<", ">", ","].contains($0)
    }) >>- notEmpty
}

func parseTuple() -> Parser<[Type]> {
    let head = parseType()
    let tailTypes = many(skipSpaces() *> char(",") *> skipSpaces() *> parseType())
    let types = cons <^> head <*> tailTypes
    return char("(") *> types <* char(")")
}

func parseFunctionType() -> Parser<FunctionType> {
    let escaping = (const(true) <^> token("@escaping")) <|> .pure(false)
    let throwable = (const(true) <^> token("throws")) <|> .pure(false)
    return curry(FunctionType.init)
        <^> (escaping <* skipSpaces())
        <*> (parseTuple() <* skipSpaces())
        <*> (throwable <* skipSpaces())
        <*> (token("->") *> skipSpaces() *> parseType())
}

func parseGenericType() -> Parser<GenericType> {
    let name = satisfyString(predicate: { !["<", "-", ">"].contains($0) })
    let head = parseType()
    let tailTypes = many(skipSpaces() *> char(",") *> skipSpaces() *> parseType())
    let types = cons <^> head <*> tailTypes
    return curry(GenericType.init)
        <^> name <* char("<")
        <*> types <* char(">")
}
