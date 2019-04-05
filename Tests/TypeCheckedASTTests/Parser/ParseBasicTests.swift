//
//  ParseBasicTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
@testable import TypeCheckedAST

class ParseBasicTests: XCTestCase {

    func testSkipSpaces() throws {
        let content = "    xxxx"
        let p = skipSpaces()
        let (_, tail) = try p.parse(content)
        XCTAssertEqual(tail, "xxxx")
    }

    func testToken() throws {
        let content = "range=[foo.swift]"
        let p = token("range")
        let (token, tail) = try p.parse(content)
        XCTAssertEqual(token, "range")
        XCTAssertEqual(tail, "=[foo.swift]")
    }

    func testTokenError() {
        let content = "rangx=[foo.swift]"
        let p = token("range")
        XCTAssertThrowsError(try p.parse(content))
    }

}
