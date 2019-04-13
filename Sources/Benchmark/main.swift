@testable import TypeCheckedAST

public func benchmark(text: String) {
    let p = many((skipSpaces() *> parseNode() <* skipSpaces()))
    switch p.parse(.root(from: text)) {
    case .success(let (nodeList, tail)):
        assert(nodeList.count != 0)
        assert(tail.current.isEmpty)
    case .failure(let error):
        if let debugContext = error.input.debugContext,
            let latestDebugMessage = debugContext.latestDebugMessage {
            print(latestDebugMessage.prefix(5000))
        }
        print(String(describing: error).prefix(5000))
    }
}

benchmark(text: rawASTString)
