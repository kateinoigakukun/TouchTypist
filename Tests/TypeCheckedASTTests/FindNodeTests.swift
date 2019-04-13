//
//  FindNodeTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/13.
//

import XCTest
@testable import TypeCheckedAST

class FindNodeTests: XCTestCase {

    func location(_ line: Int, _ column: Int, fileName: String = "foo.swift") -> Range.Point {
        return .init(fileName: fileName, line: line, column: column)
    }

    func range(_ start: (Int, Int), _ end: (Int, Int), fileName: String = "foo.swift") -> Range {
        return .init(
            start: .init(fileName: fileName, line: start.0, column: start.1),
            end: .init(fileName: fileName, line: end.0, column: end.1)
        )
    }

    func testFindInPosition() {
        let node = RawNode(
            name: "1",
            location: location(1, 1),
            children: [
                RawNode(
                    name: "2",
                    location: location(1, 2)
                ),
                RawNode(
                    name: "3",
                    location: location(2, 2)
                ),
                RawNode(
                    name: "4",
                    location: location(3, 2)
                ),
            ]
        )
        let node1 = node.find(point: location(1, 1))
        XCTAssertEqual(node1?.name, "1")
        let node2 = node.find(point: location(1, 2))
        XCTAssertEqual(node2?.name, "2")
        let node3 = node.find(point: location(2, 2))
        XCTAssertEqual(node3?.name, "3")
    }

    func testFindInRange() {
        let node = RawNode(
            name: "1",
            range: range((1, 1), (4, 1)),
            children: [
                RawNode(
                    name: "2",
                    range: range((1, 1), (2, 3)),
                    children: [
                        RawNode(
                            name: "3",
                            location: location(2, 2)
                        )
                    ]
                ),
                RawNode(
                    name: "4",
                    range: range((2, 3), (3, 1))
                ),
                RawNode(
                    name: "5",
                    children: [
                        RawNode(
                            name: "6",
                            location: location(3, 5)
                        )
                    ]
                ),
            ]
        )
        let node3 = node.find(point: location(2, 2))
        XCTAssertEqual(node3?.name, "3")
        let node6 = node.find(point: location(3, 5))
        XCTAssertEqual(node6?.name, "6")
    }

    func testComparePoints() {
        XCTAssertTrue(location(1, 1) < location(2, 1))
        XCTAssertFalse(location(1, 2) < location(1, 1))
        XCTAssertFalse(location(1, 1) < location(1, 1))
        XCTAssertTrue(location(1, 1) < location(1, 2))
    }

    func testContainsPoint() {
        XCTAssertTrue(range((1, 1), (1, 2)).contains(location(1, 1)))
        XCTAssertTrue(range((1, 1), (1, 2)).contains(location(1, 2)))
        XCTAssertTrue(range((1, 1), (3, 2)).contains(location(2, 1)))
        XCTAssertTrue(range((1, 1), (1, 3)).contains(location(1, 2)))
        XCTAssertFalse(range((1, 1), (1, 3)).contains(location(1, 4)))
    }
}

extension RawNode {

    init(name: String,
         range: Range? = nil,
         location: Range.Point? = nil,
         children: [RawNode] = []) {
        var attributes = [Attribute]()
        if let range = range {
            attributes.append(.range(range))
        }
        if let location = location {
            attributes.append(.location(location))
        }
        self.init(
            name: name,
            nodeContents: attributes.map(NodeContent.attribute)
                + children.map(NodeContent.node)
        )
    }
}
