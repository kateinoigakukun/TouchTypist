//
//  ParseNodeTests.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
@testable import TypeCheckedAST
import Curry

class ParseNodeTests: XCTestCase {

    func parse(_ content: String) throws -> ASTNode {
        let rawAST = ASTParser().parse(content)
        return try CanonicalTransformer().transform(rawAST: rawAST)
    }

    func testParseSuffixedAttribute() throws {
        let content = """
        (parameter_list
          (parameter "i" type='Int' interface type='Int') range=[foo.swift:1:17 - line:1:17])
        """
        let node = try parse(content)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 17),
            end: Point(fileName: "line", line: 1, column: 17)
        )
        XCTAssertEqual(node.attributes.count, 1)
        XCTAssertEqual(node.children.count, 1)
        XCTAssertEqual(node.range, range)
        XCTAssertEqual(node.children[0].attributes.count, 2)
        XCTAssertEqual(node.children[0].value, "i")
        XCTAssertEqual(node.children[0].type, "Int")

    }

    func testParseChildren() throws {
        let content = """
        (source_file "foo.swift"
          (top_level_code_decl range=[foo.swift:1:1 - line:3:1])
          (top_level_code_decl range=[foo.swift:1:1 - line:3:1]))
        """
        let node = try parse(content)
        XCTAssertEqual(node.children.count, 2)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 1),
            end: Point(fileName: "line", line: 3, column: 1)
        )
        XCTAssertEqual(node.children.count, 2)
        XCTAssertEqual(node.children.first?.name, "top_level_code_decl")
        XCTAssertEqual(node.children.first?.range, range)
    }

    func testParseValue() throws {
        let content = """
        (source_file "foo.swift" )
        """
        let node = try parse(content)
        XCTAssertEqual(node.value, "foo.swift")
    }

    func testParseNodeWithType() throws {
        let content = "(call_expr type='[String]')"
        let node = try parse(content)
        XCTAssertEqual(node.attributes.first, .type("[String]"))
    }

    func testParseRange() throws {
        let content = "[foo.swift:1:1 - line:3:1]"
        let (node, _) = try! parseRange()
            .parse(content)
        XCTAssertEqual(node.start.fileName, "foo.swift")
        XCTAssertEqual(node.start.line, 1)
        XCTAssertEqual(node.start.column, 1)
        XCTAssertEqual(node.end.fileName, "line")
        XCTAssertEqual(node.end.line, 3)
        XCTAssertEqual(node.end.column, 1)
    }


    func testParseNodeWithRange() throws {
        let content = "(top_level_code_decl range=[foo.swift:1:1 - line:3:1])"
        let node = try parse(content)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 1),
            end: Point(fileName: "line", line: 3, column: 1)
        )
        XCTAssertEqual(node.name, "top_level_code_decl")
        XCTAssertEqual(node.range, range)
    }

    func testParseMultipleAttributes() throws {
        let content = "(call_expr type='[String]' location=foo.swift:1:11)"
        let node = try parse(content)
        let location = Point(
            fileName: "foo.swift",
            line: 1,
            column: 11
        )
        XCTAssertEqual(
            node.attributes,
            [
                .type("[String]"),
                .location(location),
            ]
        )
    }
}
