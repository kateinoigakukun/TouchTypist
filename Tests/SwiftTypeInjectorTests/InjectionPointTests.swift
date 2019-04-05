//
//  InjectionPointTests.swift
//  SwiftTypeInjectorTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
import SwiftSyntax
@testable import SwiftTypeInjector

class InjectionPointTests: XCTestCase {

    func testDetectSubstitution() {
        let file = createSourceFile(from:
            """
            let value = 1
            """
        )
        let syntax = try! SyntaxTreeParser.parse(file)
        let result = InjectionPointDetector(filePath: file).visit(syntax)

        XCTAssertEqual(
            result.description,
            """
            let value: Int = 1
            """
        )
    }

    func testDetectClosure() {
        let file = createSourceFile(from:
            """
            [1, 2, 3].map { (i) in
                return i.description
            }
            """
        )
        let syntax = try! SyntaxTreeParser.parse(file)
        let result = InjectionPointDetector(filePath: file).visit(syntax)
        XCTAssertEqual(
            result.description,
            """
            [1, 2, 3].map { (i: Int) -> String in
                return i.description
            }
            """
        )
    }
}

func createSourceFile(from input: String) -> URL {
    let url = URL(fileURLWithPath: NSTemporaryDirectory())
        .appendingPathComponent(UUID().uuidString)
        .appendingPathExtension("swift")
    try! input.write(to: url, atomically: true, encoding: .utf8)

    return url
}
