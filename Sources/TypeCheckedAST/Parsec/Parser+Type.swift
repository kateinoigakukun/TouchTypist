import Curry

public indirect enum Type: Equatable, CustomStringConvertible {
    case function(FunctionType)
    case tuple([Type])
    case nominal(String)

    public var description: String {
        switch self {
        case .function(let function):
            return function.description
        case .tuple(let types):
            return "(\(types.map { $0.description }.joined(separator: ", ")))"
        case .nominal(let type):
            return type
        }
    }
}

public struct FunctionType: Equatable, CustomStringConvertible {
    public let input: Type
    public let isThrowable: Bool
    public let output: Type

    public var description: String {
        if isThrowable {
            return "\(input) throws -> \(output)"
        } else {
            return "\(input) -> \(output)"
        }
    }
}

public func parseFunctionType(_ signature: String) throws -> FunctionType {
    return try parseFunctionType().parse(.root(from: signature)).get().0
}

func parseType() -> Parser<Type> {
    return choice(
        [
            Type.function <^> parseFunctionType(),
            Type.tuple <^> parseTuple(),
            Type.nominal <^> parseNominal(),
        ]
    )
}

func parseNominal() -> Parser<String> {
    return satisfyString(predicate: {
        !["(", ")", ","].contains($0)
    }) >>- notEmpty
}

func parseTuple() -> Parser<[Type]> {
    let head = parseType()
    let tailTypes = many(skipSpaces() *> char(",") *> skipSpaces() *> parseType())
    let types = cons <^> head <*> tailTypes
    return char("(") *> types <* char(")")
}

func parseFunctionType() -> Parser<FunctionType> {
    let throwable = (const(true) <^> token("throws")) <|> .pure(false)
    return curry(FunctionType.init)
        <^> (Type.tuple <^> parseTuple() <* skipSpaces())
        <*> (throwable <* skipSpaces())
        <*> (token("->") *> skipSpaces() *> parseType())
}

