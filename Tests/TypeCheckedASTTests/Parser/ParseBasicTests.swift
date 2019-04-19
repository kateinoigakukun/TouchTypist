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

    func testParseStringLiteral() throws {
        let (text1, tail1) = try stringLiteral().parse("\"xx\"")
        XCTAssertEqual(text1, "xx")
        XCTAssertEqual(tail1, "")
        let (text2, tail2) = try stringLiteral().parse("\"x\\\"x\"")
        XCTAssertEqual(text2, "x\\\"x")
        XCTAssertEqual(tail2, "")
    }

    func testEmptyStringLiteral() throws {
        let (text3, tail3) = try! stringLiteral().parse("''xx")
        XCTAssertEqual(text3, "")
        XCTAssertEqual(tail3, "xx")
    }
}

extension Parser {
    func parse(_ text: String) throws -> (T, String) {
        let input = ParserInput.root(from: text)
        let (result, tail): (T, ParserInput) = try parse(input).get()
        return (result, String(tail.text.value[tail.startIndex...]))
    }
}
