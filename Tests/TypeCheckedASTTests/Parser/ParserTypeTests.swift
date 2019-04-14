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
}
