//
//  ParserOperatorTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
import Curry
@testable import TypeCheckedAST

class ParserOperatorTests: XCTestCase {
    func testApplicative() throws {
        func f(_ a: Int, _ b: Int) -> Int { return a + b }

        let p = curry(f) <^> Parser.pure(1) <*> Parser<Int>.pure(3)
        let (result, _) = try p.parse("any")
        XCTAssertEqual(result, 4)
    }

    func testOr() throws {
        struct E: Error {}
        let p1 = Parser.pure(1) <|> Parser<Int> { _ in throw E() }
        let (result1, _) = try p1.parse("any")
        XCTAssertEqual(result1, 1)

        let p2 = Parser { _ in throw E() } <|> Parser.pure(1)
        let (result2, _) = try p2.parse("any")
        XCTAssertEqual(result2, 1)
    }
}
