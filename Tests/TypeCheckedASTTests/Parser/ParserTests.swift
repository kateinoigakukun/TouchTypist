//
//  ParserTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
@testable import TypeCheckedAST

class ParserTests: XCTestCase {

    func testFlatMap() throws {
        let p = Parser.pure(1).flatMap {
            .pure($0.description)
        }
        XCTAssertNoThrow(try p.parse("xxxx"))
        let (one, tail) = try p.parse("xxxx")
        XCTAssertEqual(one, "1")
        XCTAssertEqual(tail, "xxxx")
    }


    func testRemoveFirst1() {
        var testList = LinkedList.element(1, .tail)
        measure {
            for _ in 1...1000000 {
                testList.removeFirst1()
            }
        }
    }

    func testRemoveFirst2() {
        var testList = LinkedList.element(1, .tail)
        measure {
            for _ in 1...1000000 {
                testList.removeFirst2()
            }
        }
    }
}
