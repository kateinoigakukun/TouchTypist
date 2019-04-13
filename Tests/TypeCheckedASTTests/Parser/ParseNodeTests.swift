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

    func testExample13() throws {
        let content = "(accessor_decl 'anonname=0x7ff65698e370' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> [(inout T) throws -> Void]' access=internal get_for=mutations)"

        do {
            let (a, b) = try! parseAttribute().parse(" 'anonname=0x7ff65698e370' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> [(inout T) throws -> Void]' access=internal get_for=mutations)")
            let (c, d) = try! parseNode().parse(content)
//            XCTAssertEqual(b.count, 0)
        } catch {
            print(latestDebugMessage)
//            XCTFail(String(describing: error))
        }
    }

    func testExample12() throws {
        let content = """
        (substitution_map generic_signature=<Element where Element == StubProvider>
            (substitution Element -> <<unresolved concrete type>>))
        """

        let (a, b) = try! parseNode().parse(content)
        XCTAssertEqual(b.count, 0)
    }

    func testExample11() throws {
        let content = "(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._)"
        let (a, b) = try! parseNode().parse(content)
        XCTAssertEqual(b.count, 0)
    }

    func testExample10() throws {
        let content = "(declref_expr type='(UInt8.Type) -> (UInt8, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 - line:24:37] decl=Swift.(file).BinaryInteger extension.== [with (substitution_map generic_signature=<Self, Other where Self : BinaryInteger, Other : BinaryInteger> (substitution Self -> UInt8) (substitution Other -> Int))] function_ref=unapplied)"
        _ = try! parseDecl().parse("Swift.(file).BinaryInteger extension.== [with (substitution_map generic_signature=<Self, Other where Self : BinaryInteger, Other : BinaryInteger> (substitution Self -> UInt8) (substitution Other -> Int))]")
        _ = try! parseNode().parse(content)
    }

    func testExample9() throws {
        let content = """
        (string_literal_expr value="Class, computed property and `didSet` are not supported." builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)
        """
        do {
            try! parseNode().parse(content)
        } catch {
//            XCTFail(String(describing: error))
        }
    }

    func testExample8() throws {
        let content = """
        (normal_conformance type=InjectionError protocol=Error
            (value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()
            )
        )
        """
//        _ = try! parseUnknown().parse("req=_getEmbeddedNSError()")
        _ = try! unknownValue().parse("_getEmbeddedNSError()")
//        _ = try! parseNode().parse("(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError())")
//        _ = try! parseNode().parse(content)
    }

    func testExample7() throws {
        let content = "(member_ref_expr decl=Swift.(file).Sequence extension.lazy [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [StubProvider]))])"
        let (_, tail) = try! parseNode().parse(content)
        XCTAssertEqual(tail.count, 0, String(tail))
    }

    func testExample6() throws {
        let content = "decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> (inout T) throws -> Void))]"
        let (_, tail) = try parseUnknown().parse(content)
        XCTAssertEqual(tail.count, 0, String(tail))
    }

    func testParseSuffixedNodeValue() throws {
        let content = """
        (constructor_decl range=[foo.swift:1:1 - line:3:1] "init()" type='(Int) -> ()')
        """
        let (node, tail) = try parseNode().parse(content)
        let range = Range(
            start: Range.Point(fileName: "foo.swift", line: 1, column: 1),
            end: Range.Point(fileName: "line", line: 3, column: 1)
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

    func testParseWholeProjectAST() throws {
        func m(_ p: Parser<RawNode>) -> Parser<[RawNode]> {
            return cons <^> p <*> m(p)
        }
        do {
        let (nodeList, tail) = try many((skipSpaces() *> parseNode() <* skipSpaces()))
            .parse(rawASTString)
        XCTAssertNotEqual(nodeList.count, 0)
        XCTAssertEqual(tail.count, 0)
        } catch {
            print(latestDebugMessage?.prefix(5000))
            print(String(describing: error).prefix(5000))
            XCTFail()
        }
    }

    func testParseUnknownChars() throws {
        let content = """
        (closure_expr discriminator=0)
        """
        let (node, tail) = try parseNode().parse(content)
        XCTAssertEqual(
            node.attributes,
            "discriminator=0".map(Attribute.__unknownChar)
        )
        XCTAssertEqual(tail.count, 0)
    }

    func testParseUnknown() throws {
        let (unknown, tail) = try parseUnknown().parse("function_ref=single")
        XCTAssertEqual(unknown.key, "function_ref")
        XCTAssertEqual(unknown.value, "single")
        XCTAssertEqual(tail.count, 0)
    }

    func testParseElements() throws {
        let content = "(tuple_shuffle_expr elements=[-2] )"
        let (node, tail) = try! parseNode().parse(content)
        XCTAssertEqual(
            node.attributes,
            "elements=[-2]".map(Attribute.__unknownChar)
        )
        XCTAssertEqual(tail.count, 0)
    }

    func testParseSuffixedAttribute() throws {
        let content = """
        (parameter_list
            (parameter "i" type='Int' interface type='Int') range=[foo.swift:1:17 - line:1:17])
        """
        let (node, tail) = try! parseNode().parse(content)
        XCTAssertEqual(node.attributes.count, 1)
        XCTAssertEqual(node.children.count, 1)
        XCTAssertEqual(node.children[0].attributes.count, 2 + "interface".count)
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
            start: Range.Point(fileName: "foo.swift", line: 1, column: 1),
            end: Range.Point(fileName: "line", line: 3, column: 1)
        )
        let child = RawNode(
            name: "top_level_code_decl",
            attributeOrNodeOrValue: [.attribute(.range(range))]
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

    func testParseMultipleAttributes() throws {
        let content = "(call_expr type='[String]' location=foo.swift:1:11)"
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
            ]
        )
    }
}
