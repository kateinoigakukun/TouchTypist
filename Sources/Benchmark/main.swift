@testable import TypeCheckedAST

public func benchmark(text: String) {
    func m(_ p: Parser<RawNode>) -> Parser<[RawNode]> {
        return cons <^> p <*> m(p)
    }
    do {
        let (nodeList, tail) = try m(skipSpaces() *> parseNode() <* skipSpaces())
            .parse(ParserInput(text: text, startIndex: text.startIndex))
        assert(nodeList.count != 0)
        assert(tail.current.isEmpty)
    } catch {
        print(latestDebugMessage?.prefix(5000))
        print(String(describing: error).prefix(5000))
    }
}

benchmark(text: rawASTString)
