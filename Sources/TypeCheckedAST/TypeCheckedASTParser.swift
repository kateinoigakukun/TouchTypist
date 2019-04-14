import Foundation

public final class TypeCheckedASTParser {
    enum Error: Swift.Error {
        case notSwiftSourceFile
    }

    public init() {}

    public func parse(swiftSourceFile: URL, swiftcURL: URL? = nil) throws -> DumpedNode {
        guard swiftSourceFile.pathExtension == "swift" else {
            throw Error.notSwiftSourceFile
        }
        let invocator = try SwiftcInvocator(sourceFile: swiftSourceFile, swiftcURL: swiftcURL)
        let result = try invocator.dumpAST()
        let (node, _) = try parseNode().parse(.root(from: result)).get()
        return node
    }

    public func parse(astFile: URL, swiftcURL: URL? = nil) throws -> [DumpedNode] {
        let content = try String(contentsOf: astFile)
        return try parse(content: content, swiftcURL: swiftcURL)
    }

    public func parse(content: String, swiftcURL: URL? = nil) throws -> [DumpedNode] {
        let (nodeList, _) = try many1(skipSpaces() *> parseNode() <* skipSpaces()).parse(.root(from: content)).get()
        return nodeList
    }
}
