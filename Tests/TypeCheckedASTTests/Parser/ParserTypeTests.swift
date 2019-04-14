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
    }
}
