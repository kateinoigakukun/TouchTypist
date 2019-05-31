//
//  ParserTypeTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/14.
//

import XCTest
@testable import TypeCheckedAST

class ParserTypeTests: XCTestCase {

    func testParseFunctionType() throws {
        let type1 = try parseFunctionType("(Int) -> Void")
        XCTAssertEqual(type1.input, [.nominal("Int")])
        XCTAssertEqual(type1.output, .nominal("Void"))

        let type2 = try parseFunctionType("(Int) -> (String, Int)")
        XCTAssertEqual(type2.input, [.nominal("Int")])
        XCTAssertEqual(type2.output, .tuple([.nominal("String"), .nominal("Int")]))
    }

    func testParseInoutFunctionType() throws {
        let type = try parseFunctionType("(inout Int) -> Void")
        XCTAssertEqual(type.input, [.inout(.nominal("Int"))])
        XCTAssertEqual(type.output, .nominal("Void"))
    }

    func testParseEscapingFunctionType() throws {
        let type = try parseFunctionType("(Int, @escaping (Void) -> Void) -> Void")
        let escapingFunc = FunctionType(
            isEscaping: true,
            input: [.nominal("Void")],
            isThrowable: false,
            output: .nominal("Void")
        )
        let expectedInput: [Type] = [.nominal("Int"), .function(escapingFunc)]
        XCTAssertEqual(type.input, expectedInput)
        XCTAssertEqual(type.output, .nominal("Void"))
    }

    func testParseGenerics() throws {
        let type = try parseFunctionType("(Result<Int, Error>) -> Void")
        let genericType = GenericType(
            name: "Result",
            parameters: [.nominal("Int"), .nominal("Error")]
        )
        XCTAssertEqual(type.input, [.generic(genericType)])
        XCTAssertEqual(type.output, .nominal("Void"))
    }

    func testParseGenericsOutput() throws {
        let type = try parseFunctionType("(Set<Int>) -> Set<String>")
        let genericInput = GenericType(
            name: "Set",
            parameters: [.nominal("Int")]
        )
        let genericOutput = GenericType(
            name: "Set",
            parameters: [.nominal("String")]
        )
        XCTAssertEqual(type.input, [.generic(genericInput)])
        XCTAssertEqual(type.output, .generic(genericOutput))
    }
    
    func testParseInoutParameter() throws {
        let type = try parseFunctionType("(inout Int, Int) -> ())")
        XCTAssertEqual(type.input, [.inout(.nominal("Int")), .nominal("Int")])
        XCTAssertEqual(type.output, .nominal("Void"))
    }
    
    func testParseInnerType() throws {
        let type = try parseFunctionType("(Int) -> A.B.C")
        XCTAssertEqual(type.output, Type.nominal("A.B.C"))
    }
    
    func testInnerGenericType() throws {
        let (type, _) = try parseType().parse("A<B>.C")
        XCTAssertEqual(type, Type.inner(parent: .generic(.init(name: "A", parameters: [.nominal("B")])), .nominal("C")))
    }
}
