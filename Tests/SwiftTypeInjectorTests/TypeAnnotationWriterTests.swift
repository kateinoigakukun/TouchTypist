//
//  InjectionPointTests.swift
//  SwiftTypeInjectorTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
import SwiftSyntax
@testable import TypeCheckedAST
@testable import SwiftTypeInjector

class TypeAnnotationWriterTests: XCTestCase {

    func testSubstitution() {
        let file = createSourceFile(from:
            """
            let value = 1
            let stringValue = value.description
            let array = [1,2,3].map { $0.description }
            let `default` = "default"
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let dumpedNode = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
        let result = TypeAnnotationRewriter(node: dumpedNode).visit(syntax)

        XCTAssertEqual(
            result.description,
            """
            let value: Int = 1
            let stringValue: String = value.description
            let array: [String] = [1,2,3].map { $0.description }
            let `default`: String = "default"
            """
        )
    }

//    // TODO: Support TuplePatternSyntax
//    func testDetectTupleSubstitution() {
//        let file = createSourceFile(from:
//            """
//            let (foo, bar) = (1, 2)
//            """
//        )
//
//        let syntax = try! SyntaxTreeParser.parse(file)
//        let dumpedNode = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
//        let result = TypeAnnotationWriter(node: dumpedNode).visit(syntax)
//
//        XCTAssertEqual(
//            result.description,
//            """
//            let (foo, bar): (Int, Int) = (1, 2)
//            """
//        )
//    }

    func testClosure() {
        let file = createSourceFile(from:
            """
            [1, 2, 3].map { (i) in
                return (i.description, i)
            }
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let node = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
        let result = TypeAnnotationRewriter(node: node).visit(syntax)
        XCTAssertEqual(
            result.description,
            """
            [1, 2, 3].map { (i: Int) -> (String, Int) in
                return (i.description, i)
            }
            """
        )
    }

    func testClosureMultiArguments() {
        let file = createSourceFile(from:
            """
            [1, 2, 3].reduce([]) { result, i in
                return result + [i]
            }
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let node = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
        let result = TypeAnnotationRewriter(node: node).visit(syntax)
        XCTAssertEqual(
            result.description,
            """
            [1, 2, 3].reduce([]) { (result: [Int], i: Int) -> [Int] in
                return result + [i]
            }
            """
        )
    }

    func testClosureNonTupleArguments() {
        let file = createSourceFile(from:
            """
            [1, 2, 3].map { i in
                return i.description
            }
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let node = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
        let result = TypeAnnotationRewriter(node: node).visit(syntax)
        XCTAssertEqual(
            result.description,
            """
            [1, 2, 3].map { (i: Int) -> String in
                return i.description
            }
            """
        )
    }

    func testClosureAnonymousArgument() {

        let file = createSourceFile(from:
            """
            func const<A, B>(_ a: A) -> (B) -> A {
                return { _ in return a }
            }
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let node = try! TypeCheckedASTParser().parse(swiftSourceFile: file)
        let result = TypeAnnotationRewriter(node: node).visit(syntax)
        XCTAssertEqual(
            result.description,
            """
            func const<A, B>(_ a: A) -> (B) -> A {
                return { (_) -> A in return a }
            }
            """
        )
    }
}

func createSourceFile(from input: String) -> URL {
    let url = URL(fileURLWithPath: NSTemporaryDirectory())
        .appendingPathComponent(UUID().uuidString)
        .appendingPathExtension("swift")
    try! input.write(to: url, atomically: true, encoding: .utf8)

    return url
}
