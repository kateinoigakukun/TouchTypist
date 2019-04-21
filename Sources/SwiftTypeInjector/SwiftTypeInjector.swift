import SwiftSyntax
import Foundation
@testable import TypeCheckedAST

public final class SwiftTypeInjector {
    public init() {}
    public func rewrite(astSource: URL) throws {
        let dumpedNodeList: [DumpedNode] = try TypeCheckedASTParser().parse(astFile: astSource)
        try rewrite(dumpedNodeList: dumpedNodeList)
    }

    public func rewrite(content: String) throws {
        let dumpedNodeList: [DumpedNode] = [ASTParser().parse(content).asLegacyNode()!]
        try rewrite(dumpedNodeList: dumpedNodeList)
    }

    func rewrite(dumpedNodeList: [DumpedNode]) throws {
        try dumpedNodeList.forEach { (node: DumpedNode) -> Void in
            guard let sourceFilePathString = node.value else { fatalError() }
            let sourceFilePath: URL = URL(fileURLWithPath: sourceFilePathString)
            let writer: TypeAnnotationWriter = TypeAnnotationWriter(node: node)
            let syntax: SourceFileSyntax = try SyntaxTreeParser.parse(sourceFilePath)
            let result: Syntax = writer.visit(syntax)
            try result.description.write(to: sourceFilePath, atomically: true, encoding: .utf8)
        }
    }
}
