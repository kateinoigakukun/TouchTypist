//
//  InjectionPointTests.swift
//  SwiftTypeInjectorTests
//
//  Created by Yuta Saito on 2019/04/05.
//

import XCTest
import SwiftSyntax
@testable import TypeCheckedAST
@testable import SwiftTypeInjector

class InjectionPointTests: XCTestCase {

    func astNode(for url: URL) -> RawNode {
        let rawString = SwiftcInvocator().invoke(arguments: ["-frontend", "-dump-ast", url.path])
        return try! parseNode().parse(.root(from: rawString)).get().0
    }

    func testDetectSubstitution() {
        let file = createSourceFile(from:
            """
            let value = 1
            """
        )

        let syntax = try! SyntaxTreeParser.parse(file)
        let dumpedNode = astNode(for: file)
        let result = InjectionPointDetector(filePath: file, node: dumpedNode).visit(syntax)

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

        let astContent = """
        (source_file "testDetectClosure.swift"
          (top_level_code_decl range=[testDetectClosure.swift:1:1 - line:3:1]
            (brace_stmt range=[testDetectClosure.swift:1:1 - line:3:1]
              (call_expr type='[String]' location=testDetectClosure.swift:1:11 range=[testDetectClosure.swift:1:1 - line:3:1] nothrow arg_labels=_:
                (dot_syntax_call_expr type='((Int) throws -> String) throws -> [String]' location=testDetectClosure.swift:1:11 range=[testDetectClosure.swift:1:1 - line:1:11] nothrow
                  (declref_expr type='([Int]) -> ((Int) throws -> String) throws -> [String]' location=testDetectClosure.swift:1:11 range=[testDetectClosure.swift:1:11 - line:1:11] decl=Swift.(file).Collection extension.map [with (substitution_map generic_signature=<Self, T where Self : Collection> (substitution Self -> [Int]) (substitution T -> String))] function_ref=single)
                  (array_expr type='[Int]' location=testDetectClosure.swift:1:1 range=[testDetectClosure.swift:1:1 - line:1:9]
                    (call_expr implicit type='Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] nothrow arg_labels=_builtinIntegerLiteral:
                      (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] nothrow
                        (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                        (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] typerepr='Int'))
                      (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] names=_builtinIntegerLiteral
                        (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] value=1)))
                    (call_expr implicit type='Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] nothrow arg_labels=_builtinIntegerLiteral:
                      (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] nothrow
                        (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                        (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] typerepr='Int'))
                      (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] names=_builtinIntegerLiteral
                        (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] value=2)))
                    (call_expr implicit type='Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] nothrow arg_labels=_builtinIntegerLiteral:
                      (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] nothrow
                        (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                        (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] typerepr='Int'))
                      (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] names=_builtinIntegerLiteral
                        (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] value=3)))
                    (semantic_expr
                      (call_expr implicit type='[Int]' location=testDetectClosure.swift:1:1 range=[testDetectClosure.swift:1:1 - line:1:8] nothrow arg_labels=arrayLiteral:_:_:
                        (constructor_ref_call_expr implicit type='(Int...) -> [Int]' location=testDetectClosure.swift:1:1 range=[testDetectClosure.swift:1:1 - line:1:1] nothrow
                          (declref_expr implicit type='(Array<Int>.Type) -> (Int...) -> [Int]' location=testDetectClosure.swift:1:1 range=[testDetectClosure.swift:1:1 - line:1:1] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Int))] function_ref=single)
                          (type_expr implicit type='[Int].Type' location=testDetectClosure.swift:1:1 range=[testDetectClosure.swift:1:1 - line:1:1] typerepr='[Int]'))
                        (tuple_shuffle_expr implicit type='(arrayLiteral: Int...)' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:8] tuple_to_tuple elements=[-2] variadic_sources=[0, 1, 2] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Int))]
                          (tuple_expr implicit type='(arrayLiteral: Int, Int, Int)' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:8] names=arrayLiteral,'',''
                            (call_expr implicit type='Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] nothrow arg_labels=_builtinIntegerLiteral:
                              (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] nothrow
                                (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                                (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] typerepr='Int'))
                              (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] names=_builtinIntegerLiteral
                                (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:2 range=[testDetectClosure.swift:1:2 - line:1:2] value=1)))
                            (call_expr implicit type='Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] nothrow arg_labels=_builtinIntegerLiteral:
                              (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] nothrow
                                (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                                (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] typerepr='Int'))
                              (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] names=_builtinIntegerLiteral
                                (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:5 range=[testDetectClosure.swift:1:5 - line:1:5] value=2)))
                            (call_expr implicit type='Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] nothrow arg_labels=_builtinIntegerLiteral:
                              (constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] nothrow
                                (declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
                                (type_expr implicit type='Int.Type' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] typerepr='Int'))
                              (tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] names=_builtinIntegerLiteral
                                (integer_literal_expr type='Builtin.IntLiteral' location=testDetectClosure.swift:1:8 range=[testDetectClosure.swift:1:8 - line:1:8] value=3)))))))))
                (paren_expr type='((Int) throws -> String)' location=testDetectClosure.swift:1:15 range=[testDetectClosure.swift:1:15 - line:3:1] trailing-closure
                  (function_conversion_expr implicit type='(Int) throws -> String' location=testDetectClosure.swift:1:15 range=[testDetectClosure.swift:1:15 - line:3:1]
                    (closure_expr type='(Int) -> String' location=testDetectClosure.swift:1:15 range=[testDetectClosure.swift:1:15 - line:3:1] discriminator=0 single-expression
                      (parameter_list
                        (parameter "i" type='Int' interface type='Int') range=[testDetectClosure.swift:1:17 - line:1:19])
                      (member_ref_expr type='String' location=testDetectClosure.swift:2:14 range=[testDetectClosure.swift:2:12 - line:2:14] decl=Swift.(file).BinaryInteger extension.description [with (substitution_map generic_signature=<Self where Self : BinaryInteger> (substitution Self -> Int))]
                        (declref_expr type='Int' location=testDetectClosure.swift:2:12 range=[testDetectClosure.swift:2:12 - line:2:12] decl=testDetectClosure.(file).top-level code.explicit closure discriminator=0.i@testDetectClosure.swift:1:18 function_ref=unapplied)))))))))
        """
        let syntax = try! SyntaxTreeParser.parse(file)
        let (node, _) = try! parseNode().parse(.root(from: astContent)).get()
        let result = InjectionPointDetector(filePath: file, node: node).visit(syntax)
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
