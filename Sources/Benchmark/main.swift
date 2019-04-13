@testable import TypeCheckedAST
import Foundation

func parseAST(text: String) {
    let p = many((skipSpaces() *> parseNode() <* skipSpaces()))
    switch p.parse(.root(from: text)) {
    case .success(let (nodeList, tail)):
        assert(nodeList.count != 0, "\(nodeList.count) != 0")
        assert(tail.current.isEmpty)
        nodeList.forEach { $0.dump() }
    case .failure(let error):
        if let debugContext = error.input.debugContext,
            let latestDebugMessage = debugContext.latestDebugMessage {
            print(latestDebugMessage.prefix(5000))
        }
        print(String(describing: error).prefix(5000))
    }
}

if ProcessInfo.processInfo.arguments.count < 2 {
    print("Usage: Benchmark <input>")
    exit(1)
}
let url = URL(fileURLWithPath: ProcessInfo.processInfo.arguments[1])
do {
    let string = try String(contentsOf: url)
    parseAST(text: string)
} catch {
    print(String(describing: error))
    exit(1)
}
