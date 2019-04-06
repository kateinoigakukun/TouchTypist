//
//  ParseNodeTests.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
@testable import TypeCheckedAST
import Curry

let rawASTString = """
(source_file "foo.swift"
(top_level_code_decl range=[foo.swift:1:1 - line:3:1]
(brace_stmt range=[foo.swift:1:1 - line:3:1]
(call_expr type='[String]' location=foo.swift:1:11 range=[foo.swift:1:1 - line:3:1] nothrow arg_labels=_:
(dot_syntax_call_expr type='((Int) throws -> String) throws -> [String]' location=foo.swift:1:11 range=[foo.swift:1:1 - line:1:11] nothrow
(declref_expr type='([Int]) -> ((Int) throws -> String) throws -> [String]' location=foo.swift:1:11 range=[foo.swift:1:11 - line:1:11] decl=Swift.(file).Collection extension.map [with (substitution_map generic_signature=<Self, T where Self : Collection> (substitution Self -> [Int]) (substitution T -> String))] function_ref=single)
(array_expr type='[Int]' location=foo.swift:1:1 range=[foo.swift:1:1 - line:1:9]
(call_expr implicit type='Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] value=1)))
(call_expr implicit type='Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] value=2)))
(call_expr implicit type='Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] value=3)))
(semantic_expr
(call_expr implicit type='[Int]' location=foo.swift:1:1 range=[foo.swift:1:1 - line:1:8] nothrow arg_labels=arrayLiteral:_:_:
(constructor_ref_call_expr implicit type='(Int...) -> [Int]' location=foo.swift:1:1 range=[foo.swift:1:1 - line:1:1] nothrow
(declref_expr implicit type='(Array<Int>.Type) -> (Int...) -> [Int]' location=foo.swift:1:1 range=[foo.swift:1:1 - line:1:1] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Int))] function_ref=single)
(type_expr implicit type='[Int].Type' location=foo.swift:1:1 range=[foo.swift:1:1 - line:1:1] typerepr='[Int]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Int...)' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:8] tuple_to_tuple elements=[-2] variadic_sources=[0, 1, 2] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Int))]
(tuple_expr implicit type='(arrayLiteral: Int, Int, Int)' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:8] names=arrayLiteral,'',''
(call_expr implicit type='Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:2 range=[foo.swift:1:2 - line:1:2] value=1)))
(call_expr implicit type='Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:5 range=[foo.swift:1:5 - line:1:5] value=2)))
(call_expr implicit type='Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=foo.swift:1:8 range=[foo.swift:1:8 - line:1:8] value=3)
)
)
)
)
)
)
)
)
(paren_expr type='((Int) throws -> String)' location=foo.swift:1:15 range=[foo.swift:1:15 - line:3:1] trailing-closure
(function_conversion_expr implicit type='(Int) throws -> String' location=foo.swift:1:15 range=[foo.swift:1:15 - line:3:1]
(closure_expr type='(Int) -> String' location=foo.swift:1:15 range=[foo.swift:1:15 - line:3:1] discriminator=0 single-expression
(parameter_list
(parameter "i" type='Int' interface type='Int') range=[foo.swift:1:17 - line:1:17])
(member_ref_expr type='String' location=foo.swift:2:14 range=[foo.swift:2:12 - line:2:14] decl=Swift.(file).BinaryInteger extension.description [with (substitution_map generic_signature=<Self where Self : BinaryInteger> (substitution Self -> Int))]
(declref_expr type='Int' location=foo.swift:2:12 range=[foo.swift:2:12 - line:2:12] decl=foo.(file).top-level code.explicit closure discriminator=0.i@foo.swift:1:17 function_ref=unapplied)))))))))
"""

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

    func testExample() {
        try! parseNode().parse(rawASTString)
    }

    func testExample1() {
        let content = "(declref_expr function_ref=single)"
        let (node, tail1) = try! parseNode().parse(content)
        XCTAssertEqual(node.attributes[node.attributes.count-1], .__unknown(UnknownAttribute(key: "function_ref", value: "single")))
        XCTAssertEqual(tail1.count, 0)
        let (unknown, tail2) = try! parseAttribute().parse("function_ref=single")
        XCTAssertEqual(extractUnknown(unknown).key, "function_ref")
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
            value: nil,
            attributeOrNode: [.attribute(attribute)]
        )
        XCTAssertEqual(node, expectedNode)
    }
}
