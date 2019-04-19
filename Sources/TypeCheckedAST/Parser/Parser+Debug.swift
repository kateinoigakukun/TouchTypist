
struct DebugContext {
    var debugPrintStack: [String] = []
    var latestDebugMessage: String?

    init() {}
}

func debugChoice<T>(_ ps: [Parser<T>], function: StaticString = #function) -> Parser<T> {
    return Parser { input in
        var debugContext = input.debugContext ?? DebugContext()
        for (i, p) in ps.enumerated() {
            guard let r = try? p.parse(input).get() else { continue }
            let message = "[choice in \(function)]: selected \(i)"
            debugContext.debugPrintStack.append(message)
            let newInput = ParserInput(previous: r.1, index: r.1.startIndex, debugContext: debugContext)
            return .success((r.0, newInput))
        }
        return .failure(.init(original: ChoiceError.noMatch(input)))
    }
}

func debugPrint(_ id: String = #function) -> Parser<Void> {
    #if DEBUG
    return Parser {
        var debugContext = $0.debugContext ?? DebugContext()
        let message = "- [\(id)]: \($0.current)"
        debugContext.debugPrintStack.append(message)
        let input = ParserInput(previous: $0, index: $0.startIndex, debugContext: debugContext)
        return .success(((), input))
    }
    #else
    return .pure(())
    #endif
}

func trackLatestDebugMessage(_ id: String = #function) -> Parser<Void> {
    #if DEBUG
    return Parser {
        var debugContext = $0.debugContext ?? DebugContext()
        debugContext.latestDebugMessage = "- [\(id)]: \($0.current)"
        let input = ParserInput(previous: $0, index: $0.startIndex, debugContext: debugContext)
        return .success(((), input))
    }
    #else
    return .pure(())
    #endif
}

struct DebugPrintIfThrowError: ParserError {
    let input: ParserInput
}

func debugPrintIfThrow<T>(_ id: String = #function, _ p: Parser<T>) -> Parser<T> {
    return Parser { input in
        return p.parse(input).flatMapError { error in
            var debugContext = input.debugContext ?? DebugContext()
            let message = "- [\(id)]: \(error)"
            debugContext.debugPrintStack.append(message)
            let newInput = ParserInput(previous: input, index: input.startIndex, debugContext: debugContext)
            let newError = DebugPrintIfThrowError(input: newInput)
            return .failure(AnyParserError(original: newError))
        }
    }
}

