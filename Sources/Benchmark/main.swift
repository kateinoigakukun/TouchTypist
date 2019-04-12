@testable import TypeCheckedAST

public func benchmark(text: String) {
    func m(_ p: Parser<RawNode>) -> Parser<[RawNode]> {
        return cons <^> p <*> m(p)
    }
    do {
        let (nodeList, tail) = try m(skipSpaces() *> parseNode() <* skipSpaces())
            .parse(ParsingString.init(text))
        assert(nodeList.count == 0)
        assert(tail.startIndex == tail.text.value.endIndex)
    } catch {
        print(_debugPrintStack.last?.prefix(5000))
        print(String(describing: error).prefix(5000))
    }
}

benchmark(text: rawASTString)
