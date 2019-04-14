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

    func testParseAttributeIncludingParen() throws {
        let (value, tail) = try unknownValue().parse("_getEmbeddedNSError()")
        XCTAssertEqual(value, "_getEmbeddedNSError()")
        XCTAssertEqual(tail, "")
    }

    func testParseNodeWithDecl() throws {
        let content = "(member_ref_expr decl=Swift.(file).Sequence extension.lazy [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [Int]))])"
        let (_, tail) = try! parseNode().parse(content)
        XCTAssertEqual(tail, "")
    }

    func testParseSuffixedNodeValue() throws {
        let content = """
        (constructor_decl range=[foo.swift:1:1 - line:3:1] "init()" type='(Int) -> ()')
        """
        let (node, tail) = try parseNode().parse(content)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 1),
            end: Point(fileName: "line", line: 3, column: 1)
        )
        XCTAssertEqual(tail.count, 0)
        XCTAssertEqual(node.value, "init()")
        XCTAssertEqual(node.attributes, [.range(range), .type("(Int) -> ()")])
    }

    func testParseAttributeContainingParen() throws {
        let (attribute, tail) = try parseAttribute().parse("type='(Int) -> ()'")
        XCTAssertEqual(tail.count, 0)
        XCTAssertEqual(attribute, .type("(Int) -> ()"))
    }

    func testParseSuffixedAttribute() throws {
        let content = """
        (parameter_list
            (parameter "i" type='Int' interface type='Int') range=[foo.swift:1:17 - line:1:17])
        """
        let (node, tail) = try! parseNode().parse(content)
        XCTAssertEqual(node.attributes.count, 1)
        XCTAssertEqual(node.children.count, 1)
        XCTAssertEqual(node.children[0].attributes.count, 2)
        XCTAssertEqual(node.children[0].value, "i")
        XCTAssert(tail.isEmpty)
    }

    func testParseChildren() throws {
        let content = """
        (source_file "foo.swift"
            (top_level_code_decl range=[foo.swift:1:1 - line:3:1] )
            (top_level_code_decl range=[foo.swift:1:1 - line:3:1] ))
        """
        let (node, _) = try parseNode().parse(content)
        XCTAssertEqual(node.children.count, 2)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 1),
            end: Point(fileName: "line", line: 3, column: 1)
        )
        let child = DumpedNode(
            name: "top_level_code_decl",
            nodeContents: [.attribute(.range(range))]
        )
        XCTAssertEqual(node.children, Array(repeating: child, count: 2))
    }

    func testParseValue() throws {
        let content = """
        (source_file "foo.swift" )
        """
        let (node, _) = try! parseNode().parse(content)
        XCTAssertEqual(node.value, "foo.swift")
    }

    func testParseType() throws {
        let (type, tail) = try parseAttribute().parse("type='[String]'")
        XCTAssertEqual(type, .type("[String]"))
        XCTAssertEqual(tail, "")
    }

    func testParseNodeWithType() throws {
        let content = "(call_expr type='[String]')"
        let (node, _) = try parseNode().parse(content)
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
        let (node, _) = try parseNode().parse(content)
        let range = Range(
            start: Point(fileName: "foo.swift", line: 1, column: 1),
            end: Point(fileName: "line", line: 3, column: 1)
        )
        let attribute = Attribute.range(range)
        let expectedNode = DumpedNode(
            name: "top_level_code_decl",
            nodeContents: [.attribute(attribute)]
        )
        XCTAssertEqual(node, expectedNode)
    }

    func testParseMultipleAttributes() throws {
        let content = "(call_expr type='[String]' location=foo.swift:1:11)"
        let (node, _) = try parseNode().parse(content)
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

    func testSingleQuotedValue() throws {
        let content = "'value'"
        let (value, tail) = try parseNodeValue().parse(content)
        XCTAssertEqual(value, "value")
        XCTAssertEqual(tail, "")
    }
}
