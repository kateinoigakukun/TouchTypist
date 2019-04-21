//
//  SwiftcInvocatorTests.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/21.
//

import XCTest
@testable import TypeCheckedAST

class SwiftcInvocatorTests: XCTestCase {

    func testStripArguments() {
        let mock = [
            "-I", "DerivedData",
            "source1.swift",
            "source2.swift",
            "source3.swift",
            "-ICache"
        ]
        let (stripped, sources) = SwiftcInvocator.parseXcodeArguments(mock)
        XCTAssertEqual(stripped, ["-dump-ast", "-suppress-warnings"] + mock)
        XCTAssertEqual(
            sources,
            [
                2: "source1.swift",
                3: "source2.swift",
                4: "source3.swift",
            ]
        )
    }
}
