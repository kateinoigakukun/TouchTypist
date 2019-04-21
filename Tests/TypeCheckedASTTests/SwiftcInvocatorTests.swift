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
                "source1.swift",
                "source2.swift",
                "source3.swift",
            ]
        )
    }
}
