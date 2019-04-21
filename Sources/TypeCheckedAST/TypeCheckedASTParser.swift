import Foundation

public final class TypeCheckedASTParser {
    enum Error: Swift.Error {
        case notSwiftSourceFile
    }

    public init() {}

    public func parse(swiftSourceFile: URL, swiftcURL: URL? = nil) throws -> ASTNode {
        guard swiftSourceFile.pathExtension == "swift" else {
            throw Error.notSwiftSourceFile
        }
        let invocator = try SwiftcInvocator(sourceFile: swiftSourceFile, swiftcURL: swiftcURL)
        let result = try invocator.dumpAST()
        return try parse(content: result)
    }

    public func parse(astFile: URL, swiftcURL: URL? = nil) throws -> ASTNode {
        let content = try String(contentsOf: astFile)
        return try parse(content: content, swiftcURL: swiftcURL)
    }

    public func parse(content: String, swiftcURL: URL? = nil) throws -> ASTNode {
        let rawNode = ASTParser().parse(content)
        let transformer = CanonicalTransformer()
        let canNode = try transformer.transform(rawAST: rawNode)
        return canNode
    }
}
