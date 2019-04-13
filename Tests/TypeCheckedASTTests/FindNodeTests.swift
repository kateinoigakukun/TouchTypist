//
//  FindNodeTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/13.
//

import XCTest
@testable import TypeCheckedAST

class FindNodeTests: XCTestCase {

    func testFind() {
        let fileName = "foo.swift"
        func location(line: Int, column: Int) -> Range.Point {
            return .init(fileName: fileName, line: line, column: column)
        }
        let node = RawNode(
            name: "1",
            location: location(line: 1, column: 1),
            children: [
                RawNode(
                    name: "2",
                    location: location(line: 1, column: 2)
                ),
                RawNode(
                    name: "3",
                    location: location(line: 2, column: 2)
                ),
                RawNode(
                    name: "4",
                    location: location(line: 3, column: 2)
                ),
            ]
        )
        let node1 = node.find(line: 1, column: 1)
        XCTAssertEqual(node1?.name, "1")
        let node2 = node.find(line: 1, column: 2)
        XCTAssertEqual(node2?.name, "2")
        let node3 = node.find(line: 2, column: 2)
        XCTAssertEqual(node3?.name, "3")
    }
}

extension RawNode {

    init(name: String, location: Range.Point? = nil, children: [RawNode] = []) {
        self.init(
            name: name,
            attributeOrNodeOrValue: (location.map { [.attribute(.location($0))] } ?? [])
                + children.map(NodeContent.node)
        )
    }
}
