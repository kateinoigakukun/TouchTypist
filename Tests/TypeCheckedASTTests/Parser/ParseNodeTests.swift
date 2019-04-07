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

    func extractDecl(_ attr: Attribute) -> Decl {
        switch attr {
        case .decl(let decl): return decl
        default: fatalError()
        }
    }

    func extractUnknown(_ attr: Attribute) -> UnknownAttribute {
        switch attr {
        case .__unknown(let unknown): return unknown
        default: fatalError()
        }
    }

    func testExample7() throws {
        let content = "(member_ref_expr decl=Swift.(file).Sequence extension.lazy [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [StubProvider]))])"
        let (_, tail) = try! parseNode().parse(content)
        XCTAssertEqual(tail.count, 0, tail)
    }

    func testExample6() throws {
        let content = "decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> (inout T) throws -> Void))]"
        let (_, tail) = try parseUnknown().parse(content)
        XCTAssertEqual(tail.count, 0, tail)
    }

    func testExample5() throws {
        let content = """
        (constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:1:8 - line:1:8] "init()" interface type='(BuiltinStubProvider.Type) -> () -> BuiltinStubProvider' access=internal designated)
        """
        do {
            let (_, tail) = try parseNode().parse(content)
            XCTAssertEqual(tail.count, 0)
        } catch {
            print(error)
            XCTFail(_debugPrintStack.last!)
        }
    }

    func testExample4() throws {
        let content = "(declref_expr implicit type='(StubbableProvider.Type) -> () -> StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] decl=StubKit.(file).StubbableProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:1:8 function_ref=single)"
        let (_, tail) = try parseNode().parse(content)
        XCTAssertEqual(tail.count, 0)
    }

    func testExample3() throws {
        func m(_ p: Parser<RawNode>) -> Parser<[RawNode]> {
            return cons <^> p <*> m(p)
        }
        do {
        let (nodeList, tail) = try m(skipSpaces() *> parseNode() <* skipSpaces())
            .parse(rawASTString)
        XCTAssertNotEqual(nodeList.count, 0)
        XCTAssertEqual(tail.count, 0)
        } catch {
            print(_debugPrintStack.last?.prefix(5000))
            print(String(describing: error).prefix(5000))
            XCTFail()
        }
    }

    func testExample2() throws {
        let content = """
        (closure_expr discriminator=0
            (parameter_list range=[foo.swift:1:17 - line:1:17])
        )
        """
        let (node, tail) = try parseNode().parse(content)
        XCTAssertEqual(
            node.attributes[0],
            .__unknown(.init(key: "discriminator", value: "0"))
        )
        XCTAssertEqual(node.children.count, 1)
        XCTAssertEqual(tail.count, 0)
    }

    func testExample1() {
        let content = "(declref_expr function_ref=single)"
        let (node, tail1) = try! parseNode().parse(content)
        XCTAssertEqual(node.attributes[node.attributes.count-1], .__unknown(UnknownAttribute(key: "function_ref", value: "single")))
        XCTAssertEqual(tail1.count, 0)
        let (unknown, tail2) = try! parseUnknown().parse("function_ref=single")
        XCTAssertEqual(unknown.key, "function_ref")
        XCTAssertEqual(unknown.value, "single")
        XCTAssertEqual(tail2.count, 0)
    }

    func testElements() throws {
        let content = "(tuple_shuffle_expr elements=[-2] )"
        let (node, tail) = try parseNode().parse(content)
        XCTAssertEqual(
            node.attributes[0],
            .__unknown(UnknownAttribute(key: "elements", value: "[\"-2\"]"))
        )
        XCTAssertEqual(tail.count, 0)
    }

    func testPostpositionedAttribute() throws {
        let content = """
        (parameter_list
            (parameter "i" type='Int' interface type='Int') range=[foo.swift:1:17 - line:1:17])
        """
        let (node, tail) = try parseNode().parse(content)
        XCTAssertEqual(node.attributes.count, 1)
        XCTAssertEqual(node.children.count, 1)
        XCTAssertEqual(node.children[0].attributes.count, 3)
        XCTAssertEqual(node.children[0].value, "i")
        XCTAssert(tail.isEmpty)
    }

    func testParseDecl() throws {
        do {
            let content = "Swift.(file).Collection"
            let (node, _) = try parseDecl().parse(content)
            XCTAssertEqual(node.value, "Swift.(file).Collection")
        }
        do {
            let content = "Swift.(file).Int.init(_builtinIntegerLiteral:)"
            let (node, tail) = try parseDecl().parse(content)
            XCTAssertEqual(node.value, "Swift.(file).Int.init(_builtinIntegerLiteral:)")
            XCTAssertEqual(tail, "")
        }

        do {
            let content = "Swift.(file).Collection extension.map"
            let (node, tail) = try parseDecl().parse(content)
            XCTAssertEqual(node.value, "Swift.(file).Collection extension.map")
            XCTAssertEqual(tail, "")
        }

        do {
            let content = "(declref_expr decl=Swift.(file).Collection extension.map [with (substitution_map generic_signature=<Self, T where Self : Collection> (substitution Self -> [Int]) (substitution T -> String))])"
            let (node, _) = try! parseNode().parse(content)
            let decl = extractDecl(node.attributes[0])
            XCTAssertEqual(decl.value, "Swift.(file).Collection extension.map")
            XCTAssertEqual(decl.substitution, "[with (substitution_map generic_signature=<Self, T where Self : Collection>  (substitution Self -> [Int]) (substitution T -> String))]")
        }
    }

    func testParseChildren() throws {
        let content = """
        (source_file "foo.swift"
            (top_level_code_decl range=[foo.swift:1:1 - line:3:1] )
            (top_level_code_decl range=[foo.swift:1:1 - line:3:1] ))
        """
        let (node, _) = try parseNode().parse(content)
        XCTAssertEqual(node.children.count, 2)
    }

    func testParseValue() throws {
        let content = """
        (source_file "foo.swift" )
        """
        let (node, _) = try parseNode().parse(content)
        XCTAssertEqual(node.value, "foo.swift")
    }

    func testParseRange() throws {
        let content = "[foo.swift:1:1 - line:3:1]"
        let (node, _) = try parseRange()
            .parse(content)
        XCTAssertEqual(node.start.fileName, "foo.swift")
        XCTAssertEqual(node.start.line, 1)
        XCTAssertEqual(node.start.column, 1)
        XCTAssertEqual(node.end.fileName, "line")
        XCTAssertEqual(node.end.line, 3)
        XCTAssertEqual(node.end.column, 1)
    }

    func testParseType() throws {
        let content = "(call_expr type='[String]')"
        let (node, _) = try parseNode().parse(content)
        XCTAssertEqual(node.attributes.first, .type("[String]"))
    }

    func testParseMultipleAttributes() throws {
        let content = "(call_expr type='[String]' location=foo.swift:1:11 nothrow)"
        let (node, _) = try parseNode().parse(content)
        let location = Range.Point(
            fileName: "foo.swift",
            line: 1,
            column: 11
        )
        XCTAssertEqual(
            node.attributes,
            [
                .type("[String]"),
                .location(location),
                .nothrow
            ]
        )
    }

    func testParseNodeWithRange() throws {
        let content = "(top_level_code_decl range=[foo.swift:1:1 - line:3:1])"
        let (node, _) = try parseNode().parse(content)
        let range = Range(
            start: Range.Point(fileName: "foo.swift", line: 1, column: 1),
            end: Range.Point(fileName: "line", line: 3, column: 1)
        )
        let attribute = Attribute.range(range)
        let expectedNode = RawNode(
            name: "top_level_code_decl",
            attributeOrNodeOrValue: [.attribute(attribute)]
        )
        XCTAssertEqual(node, expectedNode)
    }
}
