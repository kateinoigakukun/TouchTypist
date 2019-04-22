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
        XCTAssertEqual(type1.input, .tuple([.nominal("Int")]))
        XCTAssertEqual(type1.output, .nominal("Void"))

        let type2 = try parseFunctionType("(Int) -> (String, Int)")
        XCTAssertEqual(type2.input, .tuple([.nominal("Int")]))
        XCTAssertEqual(type2.output, .tuple([.nominal("String"), .nominal("Int")]))
    }

    func testParseInoutFunctionType() throws {
        let type = try parseFunctionType("(inout Int) -> Void")
        XCTAssertEqual(type.input, .tuple([.nominal("inout Int")]))
        XCTAssertEqual(type.output, .nominal("Void"))
    }

    func testParseEscapingFunctionType() throws {
        let type = try parseFunctionType("(inout Int, @escaping (Void) -> Void) -> Void")
        let escapingFunc = FunctionType(
            isEscaping: true,
            input: .tuple([.nominal("Void")]),
            isThrowable: false,
            output: .nominal("Void")
        )
        let expectedInput = Type.tuple([.nominal("inout Int"), .function(escapingFunc)])
        XCTAssertEqual(type.input, expectedInput)
        XCTAssertEqual(type.output, .nominal("Void"))
    }

    func testParseGenerics() throws {
        let type = try parseFunctionType("(Result<Int, Error>) -> Void")
        let genericType = GenericType(
            name: "Result",
            parameters: [.nominal("Int"), .nominal("Error")]
        )
        XCTAssertEqual(type.input, .tuple([.generic(genericType)]))
        XCTAssertEqual(type.output, .nominal("Void"))
    }
}
