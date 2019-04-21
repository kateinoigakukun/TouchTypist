import SwiftSyntax
import Foundation
import TypeCheckedAST

public final class SwiftTypeInjector {
    public init() {}
    public func rewrite(astSource: URL) throws {
        let node = try TypeCheckedASTParser().parse(astFile: astSource)
        try rewrite(node: node)
    }

    public func rewrite(content: String) throws {
        let node = try TypeCheckedASTParser().parse(content: content)
        try rewrite(node: node)
    }

    func rewrite(node: ASTNode) throws {
        guard let sourceFilePathString = node.value else { fatalError() }
        let sourceFilePath: URL = URL(fileURLWithPath: sourceFilePathString)
        let writer: TypeAnnotationRewriter = TypeAnnotationRewriter(node: node)
        let syntax: SourceFileSyntax = try SyntaxTreeParser.parse(sourceFilePath)
        let result: Syntax = writer.visit(syntax)
        try result.description.write(to: sourceFilePath, atomically: true, encoding: .utf8)
    }
}
