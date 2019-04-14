import SwiftSyntax
import Foundation
import TypeCheckedAST

public final class SwiftTypeInjector {
    public init() {}
    public func rewrite(astSource: URL) throws {
        let dumpedNodeList = try TypeCheckedASTParser().parse(astFile: astSource)
        try dumpedNodeList.forEach { node in
            guard let sourceFilePathString = node.value else { fatalError() }
            let sourceFilePath = URL(fileURLWithPath: sourceFilePathString)
            let writer = TypeAnnotationWriter(node: node)
            let syntax = try SyntaxTreeParser.parse(sourceFilePath)
            let result = writer.visit(syntax)
            try result.description.write(to: sourceFilePath, atomically: true, encoding: .utf8)
        }
    }
}
