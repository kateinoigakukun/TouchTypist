//
//  ParserCombinatorTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
@testable import TypeCheckedAST

class ParserCombinatorTests: XCTestCase {

    func testSatisfy() throws {
        let content = "ccccbbbbaaaaaa"
        let expect  =  "cccbbbbaaaaaa"
        let (char, tail) = try satisfy(predicate: { $0 == "c" })
            .parse(content)
        XCTAssertEqual(char, "c")
        XCTAssertEqual(tail, expect)
    }

    func testSatisfyError() {
        let content = "ccccbbbbaaaaaa"
        let c = satisfy(predicate: { $0 == "c" })
        let p = c *> c *> c *> c *> c
        XCTAssertThrowsError(try p.parse(content))
    }

    func testMany() throws {
        let content = "ccccbbbbaaaaaa"
        let expect  =     "bbbbaaaaaa"
        let c = satisfy(predicate: { $0 == "c" })
        let (chars, tail) = try many(c).parse(content)

        XCTAssertEqual(chars, ["c", "c", "c", "c",])
        XCTAssertEqual(tail, expect)
    }

}
