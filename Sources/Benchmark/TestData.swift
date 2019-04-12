//
//  TestData.swift
//  TypeCheckedASTTests
//
//  Created by Yuta Saito on 2019/04/07.
//

import Foundation
let rawASTString = """
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift"
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:1:1 - line:5:1] "BuiltinStubProvider" interface type='BuiltinStubProvider.Type' access=internal non-resilient inherits: StubProvider
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:2:5 - line:4:5] "stub(of:)" <T> interface type='<T> (BuiltinStubProvider) -> (T.Type) -> T?' access=internal captures=(<generic> )
(parameter "self" interface type='BuiltinStubProvider')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:2:17 - line:2:33])
(result
)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:2:41 - line:4:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:9 - line:3:71]
(call_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:71] nothrow arg_labels=of:
(dot_syntax_call_expr type='(T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:58] nothrow
(declref_expr type='(Array<StubProvider>) -> (T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:58 - line:3:58] decl=StubKit.(file).Array extension.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:17 [with (substitution_map generic_signature=<Element, T where Element == StubProvider> (substitution Element -> StubProvider) (substitution T -> T))] function_ref=single)
(array_expr type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:56]
(call_expr type='StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:35] nothrow arg_labels=
(constructor_ref_call_expr type='() -> StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] nothrow
(declref_expr implicit type='(StubbableProvider.Type) -> () -> StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] decl=StubKit.(file).StubbableProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:1:8 function_ref=single)
(type_expr type='StubbableProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] typerepr='StubbableProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:34 - line:3:35]))
(call_expr type='EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:55] nothrow arg_labels=
(constructor_ref_call_expr type='() -> EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] nothrow
(declref_expr implicit type='(EnumStubProvider.Type) -> () -> EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] decl=StubKit.(file).EnumStubProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:1:8 function_ref=single)
(type_expr type='EnumStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] typerepr='EnumStubProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:54 - line:3:55]))
(semantic_expr
(call_expr implicit type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:55] nothrow arg_labels=arrayLiteral:_:
(constructor_ref_call_expr implicit type='(StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:16] nothrow
(declref_expr implicit type='(Array<StubProvider>.Type) -> (StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:16] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))] function_ref=single)
(type_expr implicit type='[StubProvider].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:16 - line:3:16] typerepr='[StubProvider]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: StubProvider...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:55] tuple_to_tuple elements=[-2] variadic_sources=[0, 1] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))]
(tuple_expr implicit type='(arrayLiteral: StubProvider, StubProvider)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:55] names=arrayLiteral,''
(erasure_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:35]
(normal_conformance type=StubbableProvider protocol=StubProvider
(value req=stub(of:) witness=StubKit.(file).StubbableProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:10))
(call_expr type='StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:35] nothrow arg_labels=
(constructor_ref_call_expr type='() -> StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] nothrow
(declref_expr implicit type='(StubbableProvider.Type) -> () -> StubbableProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] decl=StubKit.(file).StubbableProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:1:8 function_ref=single)
(type_expr type='StubbableProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:17 - line:3:17] typerepr='StubbableProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:34 - line:3:35])))
(erasure_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:55]
(normal_conformance type=EnumStubProvider protocol=StubProvider
(value req=stub(of:) witness=StubKit.(file).EnumStubProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:113:10))
(call_expr type='EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:55] nothrow arg_labels=
(constructor_ref_call_expr type='() -> EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] nothrow
(declref_expr implicit type='(EnumStubProvider.Type) -> () -> EnumStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] decl=StubKit.(file).EnumStubProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:1:8 function_ref=single)
(type_expr type='EnumStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:38 - line:3:38] typerepr='EnumStubProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:54 - line:3:55])))))))))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:62 - line:3:71] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:3:67 - line:3:67] decl=StubKit.(file).BuiltinStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:2:21 function_ref=unapplied))))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:1:8 - line:1:8] "init()" interface type='(BuiltinStubProvider.Type) -> () -> BuiltinStubProvider' access=internal designated
(parameter "self" interface type='BuiltinStubProvider' inout)
(parameter_list)
(brace_stmt implicit
(return_stmt implicit)))))
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift"
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:1:1 - line:11:1] "StubbableProvider" interface type='StubbableProvider.Type' access=internal non-resilient inherits: StubProvider
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:5 - line:10:5] "stub(of:)" <T> interface type='<T> (StubbableProvider) -> (T.Type) -> T?' access=internal captures=(<generic> )
(parameter "self" interface type='StubbableProvider')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:17 - line:2:33])
(result
)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:41 - line:10:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:9 - line:5:9]
(pattern
(pattern_optional_some implicit type='Stubbable.Type?'
(pattern_let implicit type='Stubbable.Type'
(pattern_named type='Stubbable.Type' 'stubbable')))
(conditional_checked_cast_expr type='Stubbable.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:28 - line:3:47] value_cast writtenType='Stubbable.Type'
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:28 - line:3:28] decl=StubKit.(file).StubbableProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:21 function_ref=unapplied)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:52 - line:5:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:13 - line:4:41]
(conditional_checked_cast_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:41] value_cast writtenType='T'
(open_existential_expr implicit type='Stubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:35]
(opaque_value_expr implicit type='(Stubbable).Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:20] @ 0x7fd0e392ffc8)
(declref_expr type='Stubbable.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:20] decl=StubKit.(file).StubbableProvider.stub(of:).stubbable@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:3:16 function_ref=unapplied)
(erasure_expr implicit type='Stubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:35]
(abstract_conformance protocol=Stubbable)
(call_expr type='Stubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:35] nothrow arg_labels=
(dot_syntax_call_expr type='() -> Stubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:30] nothrow
(declref_expr type='((Stubbable).Type) -> () -> Stubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:30 - line:4:30] decl=StubKit.(file).Stubbable.stub()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:3:17 [with (substitution_map generic_signature=<Self where Self : Stubbable> (substitution Self -> Stubbable))] function_ref=double)
(opaque_value_expr implicit type='(Stubbable).Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:20 - line:4:20] @ 0x7fd0e392ffc8))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:4:34 - line:4:35]))))))))
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:9 - line:8:9]
(pattern
(pattern_optional_some implicit type='DefaultStubbable.Type?'
(pattern_let implicit type='DefaultStubbable.Type'
(pattern_named type='DefaultStubbable.Type' 'stubbable')))
(conditional_checked_cast_expr type='DefaultStubbable.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:28 - line:6:54] value_cast writtenType='DefaultStubbable.Type'
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:28 - line:6:28] decl=StubKit.(file).StubbableProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:2:21 function_ref=unapplied)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:59 - line:8:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:13 - line:7:48]
(conditional_checked_cast_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:48] value_cast writtenType='T'
(open_existential_expr implicit type='DefaultStubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:42]
(opaque_value_expr implicit type='(DefaultStubbable).Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:20] @ 0x7fd0e3930680)
(declref_expr type='DefaultStubbable.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:20] decl=StubKit.(file).StubbableProvider.stub(of:).stubbable@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:6:16 function_ref=unapplied)
(erasure_expr implicit type='DefaultStubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:42]
(abstract_conformance protocol=DefaultStubbable)
(call_expr type='DefaultStubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:42] nothrow arg_labels=
(dot_syntax_call_expr type='() -> DefaultStubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:30] nothrow
(declref_expr type='((DefaultStubbable).Type) -> () -> DefaultStubbable' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:30 - line:7:30] decl=StubKit.(file).DefaultStubbable.defaultStub()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:8:17 [with (substitution_map generic_signature=<Self where Self : DefaultStubbable> (substitution Self -> DefaultStubbable))] function_ref=double)
(opaque_value_expr implicit type='(DefaultStubbable).Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:20 - line:7:20] @ 0x7fd0e3930680))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:7:41 - line:7:42]))))))))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:9 - line:9:16]
(dot_syntax_call_expr implicit type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 - line:9:16] nothrow
(declref_expr implicit type='(T?.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 - line:9:16] decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> T))] function_ref=unapplied)
(type_expr implicit type='T?.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:9:16 - line:9:16] typerepr='T?')))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/StubbableProvider.swift:1:8 - line:1:8] "init()" interface type='(StubbableProvider.Type) -> () -> StubbableProvider' access=internal designated
(parameter "self" interface type='StubbableProvider' inout)
(parameter_list)
(brace_stmt implicit
(return_stmt implicit)))))(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift"
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:2:1 - line:6:1] Int8 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:3:12 - line:5:5] "defaultStub()" interface type='(Int8.Type) -> () -> Int8' access=public type
(parameter "self" interface type='Int8.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:3:35 - line:3:36])
(result
(type_ident
(component id='Int8' bind=Swift.(file).Int8)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:3:46 - line:5:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:9 - line:4:16]
(call_expr implicit type='Int8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] nothrow
(declref_expr implicit type='(Int8.Type) -> (IntLiteral) -> Int8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] decl=Swift.(file).Int8.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int8.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] typerepr='Int8'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:4:16 - line:4:16] value=28)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:8:1 - line:12:1] Int16 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:9:12 - line:11:5] "defaultStub()" interface type='(Int16.Type) -> () -> Int16' access=public type
(parameter "self" interface type='Int16.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:9:35 - line:9:36])
(result
(type_ident
(component id='Int16' bind=Swift.(file).Int16)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:9:47 - line:11:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:9 - line:10:16]
(call_expr implicit type='Int16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] nothrow
(declref_expr implicit type='(Int16.Type) -> (IntLiteral) -> Int16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] decl=Swift.(file).Int16.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int16.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] typerepr='Int16'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:10:16 - line:10:16] value=8128)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:14:1 - line:18:1] Int32 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:15:12 - line:17:5] "defaultStub()" interface type='(Int32.Type) -> () -> Int32' access=public type
(parameter "self" interface type='Int32.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:15:35 - line:15:36])
(result
(type_ident
(component id='Int32' bind=Swift.(file).Int32)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:15:47 - line:17:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:9 - line:16:16]
(call_expr implicit type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] nothrow
(declref_expr implicit type='(Int32.Type) -> (IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] decl=Swift.(file).Int32.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] typerepr='Int32'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:16:16 - line:16:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:20:1 - line:24:1] Int64 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:21:12 - line:23:5] "defaultStub()" interface type='(Int64.Type) -> () -> Int64' access=public type
(parameter "self" interface type='Int64.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:21:35 - line:21:36])
(result
(type_ident
(component id='Int64' bind=Swift.(file).Int64)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:21:47 - line:23:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:9 - line:22:16]
(call_expr implicit type='Int64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] nothrow
(declref_expr implicit type='(Int64.Type) -> (IntLiteral) -> Int64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] decl=Swift.(file).Int64.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int64.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] typerepr='Int64'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:22:16 - line:22:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:26:1 - line:30:1] Int inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:27:12 - line:29:5] "defaultStub()" interface type='(Int.Type) -> () -> Int' access=public type
(parameter "self" interface type='Int.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:27:35 - line:27:36])
(result
(type_ident
(component id='Int' bind=Swift.(file).Int)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:27:45 - line:29:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:9 - line:28:16]
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:28:16 - line:28:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:32:1 - line:36:1] UInt8 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:33:12 - line:35:5] "defaultStub()" interface type='(UInt8.Type) -> () -> UInt8' access=public type
(parameter "self" interface type='UInt8.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:33:35 - line:33:36])
(result
(type_ident
(component id='UInt8' bind=Swift.(file).UInt8)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:33:47 - line:35:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:9 - line:34:16]
(call_expr implicit type='UInt8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> UInt8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] nothrow
(declref_expr implicit type='(UInt8.Type) -> (IntLiteral) -> UInt8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] decl=Swift.(file).UInt8.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='UInt8.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] typerepr='UInt8'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:34:16 - line:34:16] value=28)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:38:1 - line:42:1] UInt16 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:39:12 - line:41:5] "defaultStub()" interface type='(UInt16.Type) -> () -> UInt16' access=public type
(parameter "self" interface type='UInt16.Type')
(paramete
r_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:39:35 - line:39:36])
(result
(type_ident
(component id='UInt16' bind=Swift.(file).UInt16)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:39:48 - line:41:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:9 - line:40:16]
(call_expr implicit type='UInt16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> UInt16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] nothrow
(declref_expr implicit type='(UInt16.Type) -> (IntLiteral) -> UInt16' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] decl=Swift.(file).UInt16.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='UInt16.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] typerepr='UInt16'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:40:16 - line:40:16] value=8128)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:44:1 - line:48:1] UInt32 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:45:12 - line:47:5] "defaultStub()" interface type='(UInt32.Type) -> () -> UInt32' access=public type
(parameter "self" interface type='UInt32.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:45:35 - line:45:36])
(result
(type_ident
(component id='UInt32' bind=Swift.(file).UInt32)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:45:48 - line:47:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:9 - line:46:16]
(call_expr implicit type='UInt32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> UInt32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] nothrow
(declref_expr implicit type='(UInt32.Type) -> (IntLiteral) -> UInt32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] decl=Swift.(file).UInt32.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='UInt32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] typerepr='UInt32'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:46:16 - line:46:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:50:1 - line:54:1] UInt64 inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:51:12 - line:53:5] "defaultStub()" interface type='(UInt64.Type) -> () -> UInt64' access=public type
(parameter "self" interface type='UInt64.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:51:35 - line:51:36])
(result
(type_ident
(component id='UInt64' bind=Swift.(file).UInt64)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:51:48 - line:53:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:9 - line:52:16]
(call_expr implicit type='UInt64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> UInt64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] nothrow
(declref_expr implicit type='(UInt64.Type) -> (IntLiteral) -> UInt64' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] decl=Swift.(file).UInt64.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='UInt64.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] typerepr='UInt64'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:52:16 - line:52:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:56:1 - line:60:1] UInt inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:57:5 - line:59:5] "defaultStub()" interface type='(UInt.Type) -> () -> UInt' access=internal type
(parameter "self" interface type='UInt.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:57:28 - line:57:29])
(result
(type_ident
(component id='UInt' bind=Swift.(file).UInt)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:57:39 - line:59:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:9 - line:58:16]
(call_expr implicit type='UInt' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> UInt' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] nothrow
(declref_expr implicit type='(UInt.Type) -> (IntLiteral) -> UInt' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] decl=Swift.(file).UInt.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='UInt.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] typerepr='UInt'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:58:16 - line:58:16] value=33550336)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:62:1 - line:66:1] Float inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:63:5 - line:65:5] "defaultStub()" interface type='(Float.Type) -> () -> Float' access=internal type
(parameter "self" interface type='Float.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:63:28 - line:63:29])
(result
(type_ident
(component id='Float' bind=Swift.(file).Float)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:63:40 - line:65:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:9 - line:64:16]
(call_expr implicit type='Float' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] nothrow arg_labels=_builtinFloatLiteral:
(constructor_ref_call_expr implicit type='(FPIEEE80) -> Float' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] nothrow
(declref_expr implicit type='(Float.Type) -> (FPIEEE80) -> Float' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] decl=Swift.(file).Float extension.init(_builtinFloatLiteral:) function_ref=single)
(type_expr implicit type='Float.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] typerepr='Float'))
(tuple_expr implicit type='(_builtinFloatLiteral: FPIEEE80)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] names=_builtinFloatLiteral
(float_literal_expr type='FPIEEE80' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:64:16 - line:64:16] value=1.6180339887)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:68:1 - line:72:1] Double inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:69:5 - line:71:5] "defaultStub()" interface type='(Double.Type) -> () -> Double' access=internal type
(parameter "self" interface type='Double.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:69:28 - line:69:29])
(result
(type_ident
(component id='Double' bind=Swift.(file).Double)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:69:41 - line:71:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:9 - line:70:16]
(call_expr implicit type='Double' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] nothrow arg_labels=_builtinFloatLiteral:
(constructor_ref_call_expr implicit type='(FPIEEE80) -> Double' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] nothrow
(declref_expr implicit type='(Double.Type) -> (FPIEEE80) -> Double' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] decl=Swift.(file).Double extension.init(_builtinFloatLiteral:) function_ref=single)
(type_expr implicit type='Double.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] typerepr='Double'))
(tuple_expr implicit type='(_builtinFloatLiteral: FPIEEE80)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] names=_builtinFloatLiteral
(float_literal_expr type='FPIEEE80' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Number.swift:70:16 - line:70:16] value=1.6180339887))))))))
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift"
(protocol range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:2:8 - line:8:1] "StubProvider" <Self : StubProvider> interface type='StubProvider.Protocol' access=public non-resilient requirement signature=<Self>
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:7:5 - line:7:39] "stub(of:)" <T> interface type='<Self, T where Self : StubProvider> (Self) -> (T.Type) -> T?' access=public
(parameter "self" interface type='Self')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:7:17 - line:7:33])
(result
)))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:10:1 - line:14:1] Array<Element> inherits: StubProvider
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:12 - line:13:5] "stub(of:)" <T> interface type='<Element, T where Element == StubProvider> (Array<Element>) -> (T.Type) -> T?' access=public captures=(<generic> )
(parameter "self" interface type='Array<Element>')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:24 - line:11:40])
(result
)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:48 - line:13:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:9 - line:12:54]
(member_ref_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 - line:12:54] decl=Swift.(file).Collection extension.first [with (substitution_map generic_signature=<Self where Self : Collection> (substitution Self -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Array<StubProvider>, T?>>, T>))]
(call_expr type='LazyMapSequence<LazyFilterSequence<LazyMapSequence<Array<StubProvider>, T?>>, T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 - line:12:52] nothrow arg_labels=_:
(dot_syntax_call_expr type='(@escaping (StubProvider) -> T?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Array<StubProvider>, T?>>, T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 - line:12:21] nothrow
(declref_expr type='(LazySequence<Array<StubProvider>>) -> (@escaping (StubProvider) -> T?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Array<StubProvider>, T?>>, T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:21 - line:12:21] decl=Swift.(file).LazySequenceProtocol extension.compactMap [with (substitution_map generic_signature=<Self, ElementOfResult where Self : LazySequenceProtocol> (substitution Self -> LazySequence<Array<StubProvider>>) (substitution ElementOfResult -> T))] function_ref=single)
(member_ref_expr type='LazySequence<[StubProvider]>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 - line:12:16] decl=Swift.(file).Sequence extension.lazy [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [StubProvider]))]
(declref_expr implicit type='Array<StubProvider>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:16 - line:12:16] decl=StubKit.(file).Array extension.stub(of:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:17 function_ref=unapplied)))
(paren_expr type='(@escaping (StubProvider) -> T?)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 - line:12:52] trailing-closure
(closure_expr type='(StubProvider) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 - line:12:52] discriminator=0 captures=(<generic> type<direct>) escaping single-expression
(parameter_list
(parameter "$0" type='StubProvider' interface type='StubProvider') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 - line:12:32])
(open_existential_expr implicit type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:50]
(opaque_value_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:34] @ 0x7ff8b3064ba8)
(declref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:34] decl=StubKit.(file).Array extension.stub(of:).explicit closure discriminator=0.$0@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:32 function_ref=unapplied)
(call_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:50] nothrow arg_labels=of:
(dot_syntax_call_expr type='(T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:37] nothrow
(declref_expr type='(StubProvider) -> (T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:37 - line:12:37] decl=StubKit.(file).StubProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:7:10 [with (substitution_map generic_signature=<Self, T where Self : StubProvider> (substitution Self -> StubProvider) (substitution T -> T))] function_ref=single)
(opaque_value_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:34 - line:12:34] @ 0x7ff8b3064ba8))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:41 - line:12:50] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:12:46 - line:12:46] decl=StubKit.(file).Array extension.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:28 function_ref=unapplied)))))))))))))
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift"
(import_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:1:1 - line:1:8] 'Foundation')
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:3:1 - line:7:1] Bool inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:4:5 - line:6:5] "defaultStub()" interface type='(Bool.Type) -> () -> Bool' access=internal type
(parameter "self" interface type='Bool.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:4:28 - line:4:29])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:4:39 - line:6:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:9 - line:5:16]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:5:16 - line:5:16] value=true)))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:9:1 - line:13:1] URL inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:10:5 - line:12:5] "defaultStub()" interface type='(URL.Type) -> () -> URL' access=internal type
(parameter "self" interface type='URL.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:10:28 - line:10:29])
(result
(type_ident
(component id='URL' bind=Foundation.(file).URL)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:10:38 - line:12:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:9 - line:11:50]
(force_value_expr type='URL' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 - line:11:50]
(call_expr type='URL?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 - line:11:49] nothrow arg_labels=string:
(constructor_ref_call_expr type='(__shared String) -> URL?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 - line:11:16] nothrow
(declref_expr implicit type='(URL.Type) -> (__shared String) -> URL?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 - line:11:16] decl=Foundation.(file).URL.init(string:) function_ref=single)
(type_expr type='URL.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:16 - line:11:16] typerepr='URL'))
(tuple_expr type='(string: __shared String)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:19 - line:11:49] names=string
(string_literal_expr type='String' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:11:28 - line:11:28] encoding=utf8 value="https://example.com" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**))))))))
(if_config_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:15:1 - line:21:1]
#if: active
(call_expr type='<null>' arg_labels=_:
(unresolved_decl_ref_expr type='<null>' name=compiler function_ref=unapplied)
(paren_expr type='<null>'
(prefix_unary_expr type='<null>'
(unresolved_decl_ref_expr type='<null>' name=>= function_ref=unapplied)
(paren_expr implicit type='<null>'
(integer_literal_expr type='<null>' value=5)))))
(elements
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:16:1 - line:20:1] Result<Success, Failure> inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:5 - line:19:5] "defaultStub()" interface type='<Success, Failure where Success : DefaultStubbable, Failure : Error> (Result<Success, Failure>.Type) -> () -> Result<Success, Failure>' access=internal type
(parameter "self" interface type='Result<Success, Failure>.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:28 - line:17:29])
(result
(type_ident
(component id='Result' bind=Swift.(file).Result)
(type_ident
(component id='Success' bind=StubKit.(file).Result extension.Success))
(type_ident
(component id='Failure' bind=StubKit.(file).Result extension.Failure))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:59 - line:19:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:9 - line:18:39]
(call_expr type='Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:39] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Success) -> Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:17] nothrow
(declref_expr type='(Result<Success, Failure>.Type) -> (Success) -> Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 - line:18:17] decl=Swift.(file).Result.success [with (substitution_map generic_signature=<Success, Failure where Failure : Error> (substitution Success -> Success) (substitution Failure -> Failure))] function_ref=double)
(type_expr implicit type='Result<Success, Failure>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:16] typerepr='Result<Success, Failure>'))
(paren_expr type='(Success)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:24 - line:18:39]
(call_expr type='Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:38] nothrow arg_labels=
(dot_syntax_call_expr type='() -> Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:26] nothrow
(declref_expr type='(Success.Type) -> () -> Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 - line:18:26] decl=StubKit.(file).DefaultStubbable.defaultStub()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:8:17 [with (substitution_map generic_signature=<Self where Self : DefaultStubbable> (substitution Self -> Success))] function_ref=double)
(type_expr implicit type='Success.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:25] typerepr='Success'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:37 - line:18:38]))))))))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:16:1 - line:20:1] Result<Success, Failure> inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:5 - line:19:5] "defaultStub()" interface type='<Success, Failure where Success : DefaultStubbable, Failure : Error> (Result<Success, Failure>.Type) -> () -> Result<Success, Failure>' access=internal type
(parameter "self" interface type='Result<Success, Failure>.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:28 - line:17:29])
(result
(type_ident
(component id='Result' bind=Swift.(file).Result)
(type_ident
(component id='Success' bind=StubKit.(file).Result extension.Success))
(type_ident
(component id='Failure' bind=StubKit.(file).Result extension.Failure))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:17:59 - line:19:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:9 - line:18:39]
(call_expr type='Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:39] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Success) -> Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:17] nothrow
(declref_expr type='(Result<Success, Failure>.Type) -> (Success) -> Result<Success, Failure>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:17 - line:18:17] decl=Swift.(file).Result.success [with (substitution_map generic_signature=<Success, Failure where Failure : Error> (substitution Success -> Success) (substitution Failure -> Failure))] function_ref=double)
(type_expr implicit type='Result<Success, Failure>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:16 - line:18:16] typerepr='Result<Success, Failure>'))
(paren_expr type='(Success)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:24 - line:18:39]
(call_expr type='Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:38] nothrow arg_labels=
(dot_syntax_call_expr type='() -> Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:26] nothrow
(declref_expr type='(Success.Type) -> () -> Success' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:26 - line:18:26] decl=StubKit.(file).DefaultStubbable.defaultStub()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:8:17 [with (substitution_map generic_signature=<Self where Self : DefaultStubbable> (substitution Self -> Success))] function_ref=double)
(type_expr implicit type='Success.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:25 - line:18:25] typerepr='Success'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/Misc.swift:18:37 - line:18:38])))))))))(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift"
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:1:1 - line:36:1] Stub<T>
(class_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:4:12 - line:35:5] "Injector" interface type='Stub<T>.Injector.Type' access=public non-resilient
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:9 - line:5:54]
(pattern_typed type='[(inout T) throws -> Void]'
(pattern_named type='[(inout T) throws -> Void]' 'mutations')
(type_array
(type_function
(type_tuple
(type_inout
(type_ident
(component id='T' bind=StubKit.(file).Stub extension.T)))) throws
(type_ident
(component id='Void' bind=Swift.(file).Void)))))
(array_expr type='[(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 - line:5:54]
(semantic_expr
(call_expr implicit type='[(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 - line:5:53] nothrow arg_labels=
(constructor_ref_call_expr implicit type='((inout T) throws -> Void...) -> [(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 - line:5:53] nothrow
(declref_expr implicit type='(Array<(inout T) throws -> Void>.Type) -> ((inout T) throws -> Void...) -> [(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 - line:5:53] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> (inout T) throws -> Void))] function_ref=single)
(type_expr implicit type='[(inout T) throws -> Void].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:53 - line:5:53] typerepr='[(inout T) throws -> Void]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: (inout T) throws -> Void...)' tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> (inout T) throws -> Void))]
(tuple_expr implicit type='()'))))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] "mutations" type='[(inout T) throws -> Void]' interface type='[(inout T) throws -> Void]' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e370' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> [(inout T) throws -> Void]' access=internal get_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(return_stmt implicit
(load_expr implicit type='[(inout T) throws -> Void]'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e558' interface type='<T where T : Decodable> (Stub<T>.Injector) -> ([(inout T) throws -> Void]) -> ()' access=internal set_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list
(parameter "value" interface type='[(inout T) throws -> Void]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))
(declref_expr implicit type='[(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e788' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> ()' access=internal _modify_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(inout_expr implicit type='inout [(inout T) throws -> Void]'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied)))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e370' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> [(inout T) throws -> Void]' access=internal get_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(return_stmt implicit
(load_expr implicit type='[(inout T) throws -> Void]'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e558' interface type='<T where T : Decodable> (Stub<T>.Injector) -> ([(inout T) throws -> Void]) -> ()' access=internal set_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list
(parameter "value" interface type='[(inout T) throws -> Void]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))
(declref_expr implicit type='[(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13] 'anonname=0x7ff65698e788' interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> ()' access=internal _modify_for=mutations
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 - line:5:13]
(inout_expr implicit type='inout [(inout T) throws -> Void]'
(member_ref_expr implicit type='@lvalue [(inout T) throws -> Void]' decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(declref_expr implicit type='Stub<T>.Injector' decl=StubKit.(file).Stub extension.Injector.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 function_ref=unapplied))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:16 - line:26:9] "set(_:value:)" <U> interface type='<T, U where T : Decodable> (Stub<T>.Injector) -> (KeyPath<T, U>, U) -> ()' access=public captures=(<generic> )
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list
(parameter "keyPath" interface type='KeyPath<T, U>')
(parameter "value" apiName=value interface type='U') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:27 - line:15:62])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:64 - line:26:9]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 - line:25:13] nothrow arg_labels=_:
(dot_syntax_call_expr type='(__owned (inout T) throws -> Void) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 - line:16:23] nothrow
(declref_expr type='(inout Array<(inout T) throws -> Void>) -> (__owned (inout T) throws -> Void) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:23 - line:16:23] decl=Swift.(file).Array extension.append [with (substitution_map generic_signature=<Element> (substitution Element -> (inout T) throws -> Void))] function_ref=single)
(inout_expr implicit type='inout Array<(inout T) throws -> Void>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 - line:16:13]
(member_ref_expr type='@lvalue [(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 - line:16:13] decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:13 - line:16:13] decl=StubKit.(file).Stub extension.Injector.set(_:value:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:21 function_ref=unapplied))))
(paren_expr type='(__owned (inout T) throws -> Void)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:30 - line:25:13] trailing-closure
(closure_expr type='(inout T) throws -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:30 - line:25:13] discriminator=0 captures=(<generic> keyPath<direct>, value) escaping
(parameter_list
(parameter "instance" type='T' interface type='T' inout) range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:32 - line:16:32])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:30 - line:25:13]
(guard_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:17 - line:19:17]
(pattern
(pattern_optional_some implicit type='Int?'
(pattern_let implicit type='Int'
(pattern_named type='Int' 'offset')))
(call_expr type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:36 - line:17:70] nothrow arg_labels=of:
(dot_syntax_call_expr type='(PartialKeyPath<T>) -> Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:36 - line:17:52] nothrow
(declref_expr type='(MemoryLayout<T>.Type) -> (PartialKeyPath<T>) -> Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:52 - line:17:52] decl=Swift.(file).MemoryLayout extension.offset(of:) [with (substitution_map generic_signature=<T> (substitution T -> T))] function_ref=single)
(type_expr type='MemoryLayout<T>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:36 - line:17:50] typerepr='MemoryLayout<T>'))
(tuple_expr type='(of: PartialKeyPath<T>)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:58 - line:17:70] names=of
(derived_to_base_expr implicit type='PartialKeyPath<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:63 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:63 - line:17:63]
(declref_expr type='KeyPath<T, U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:63 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:63 - line:17:63] decl=StubKit.(file).Stub extension.Injector.set(_:value:).keyPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:30 function_ref=unapplied)))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:77 - line:19:17]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:21 - line:18:147]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:27 - line:18:147]
(normal_conformance type=InjectionError protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='InjectionError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:27 - line:18:147] nothrow arg_labels=keyPath:message:
(dot_syntax_call_expr type='(AnyKeyPath, String) -> InjectionError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:27 - line:18:42] nothrow
(declref_expr type='(InjectionError.Type) -> (AnyKeyPath, String) -> InjectionError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:42 - line:18:42] decl=StubKit.(file).InjectionError.unsupportedProperty(keyPath:message:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:39:10 function_ref=single)
(type_expr type='InjectionError.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:27 - line:18:27] typerepr='InjectionError'))
(tuple_expr type='(keyPath: AnyKeyPath, message: String)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:61 - line:18:147] names=keyPath,message
(derived_to_base_expr implicit type='AnyKeyPath' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:71 - line:18:71]
(declref_expr type='KeyPath<T, U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:71 - line:18:71] decl=StubKit.(file).Stub extension.Injector.set(_:value:).keyPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:30 function_ref=unapplied))
(string_literal_expr type='String' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:18:89 - line:18:89] encoding=utf8 value="Class, computed property and `didSet` are not supported." builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)))))))
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:17 - line:24:17] nothrow arg_labels=of:_:
(declref_expr type='(inout T, (UnsafeMutableRawBufferPointer) throws -> ()) throws -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:17 - line:20:17] decl=Swift.(file).withUnsafeMutableBytes(of:_:) [with (substitution_map generic_signature=<T, Result> (substitution T -> T) (substitution Result -> ()))] function_ref=single)
(tuple_expr type='(of: inout T, (UnsafeMutableRawBufferPointer) throws -> ())' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:39 - line:24:17] trailing-closure names=of,''
(inout_expr type='inout T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:44 - line:20:45]
(declref_expr type='@lvalue T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:45 - line:20:45] decl=StubKit.(file).Stub extension.Injector.set(_:value:).explicit closure discriminator=0.instance@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:16:32 function_ref=unapplied))
(function_conversion_expr implicit type='(UnsafeMutableRawBufferPointer) throws -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:55 - line:24:17]
(closure_expr type='(UnsafeMutableRawBufferPointer) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:55 - line:24:17] discriminator=0 captures=(<generic> offset<direct><noescape>, value<direct><noescape>)
(parameter_list
(parameter "bytes" type='UnsafeMutableRawBufferPointer' interface type='UnsafeMutableRawBufferPointer') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:57 - line:20:57])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:55 - line:24:17]
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:21 - line:21:66]
(pattern_named type='UnsafeMutableRawPointer' 'rawPointerToValue')
(binary_expr type='UnsafeMutableRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 - line:21:66] nothrow
(dot_syntax_call_expr implicit type='(UnsafeMutableRawPointer, Int) -> UnsafeMutableRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 - line:21:64] nothrow
(declref_expr type='(UnsafeMutableRawPointer.Type) -> (UnsafeMutableRawPointer, Int) -> UnsafeMutableRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 - line:21:64] decl=Swift.(file).Strideable extension.+ [with (substitution_map generic_signature=<Self where Self : _Pointer> (substitution Self -> UnsafeMutableRawPointer))] function_ref=unapplied)
(type_expr implicit type='UnsafeMutableRawPointer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:64 - line:21:64] typerepr='UnsafeMutableRawPointer'))
(tuple_expr implicit type='(UnsafeMutableRawPointer, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 - line:21:66]
(force_value_expr type='UnsafeMutableRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 - line:21:62]
(member_ref_expr type='UnsafeMutableRawPointer?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:51 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 - line:21:51] decl=Swift.(file).UnsafeMutableRawBufferPointer extension.baseAddress
(declref_expr type='UnsafeMutableRawBufferPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:45 - line:21:45] decl=StubKit.(file).Stub extension.Injector.set(_:value:).explicit closure discriminator=0.explicit closure discriminator=0.bytes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:20:57 function_ref=unapplied)))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:66 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:66 - line:21:66] decl=StubKit.(file).Stub extension.Injector.set(_:value:).explicit closure discriminator=0.offset@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:17:27 function_ref=unapplied))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:25 - line:21:25] "rawPointerToValue" type='UnsafeMutableRawPointer' interface type='UnsafeMutableRawPointer' access=private let readImpl=stored immutable)

(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:21 - line:22:90]
(pattern_named type='UnsafeMutablePointer<U>' 'pointerToValue')
(call_expr type='UnsafeMutablePointer<U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:42 - line:22:90] nothrow arg_labels=to:
(dot_syntax_call_expr type='(U.Type) -> UnsafeMutablePointer<U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:42 - line:22:60] nothrow
(declref_expr type='(UnsafeMutableRawPointer) -> (U.Type) -> UnsafeMutablePointer<U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:60 - line:22:60] decl=Swift.(file).UnsafeMutableRawPointer.assumingMemoryBound(to:) [with (substitution_map generic_signature=<T> (substitution T -> U))] function_ref=single)
(declref_expr type='UnsafeMutableRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:42 - line:22:42] decl=StubKit.(file).Stub extension.Injector.set(_:value:).explicit closure discriminator=0.explicit closure discriminator=0.rawPointerToValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:21:25 function_ref=unapplied))
(tuple_expr type='(to: U.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:79 - line:22:90] names=to
(dot_self_expr type='U.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:84 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:84 - line:22:86]
(type_expr type='U.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:84 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:84 - line:22:84] typerepr='U')))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:25 - line:22:25] "pointerToValue" type='UnsafeMutablePointer<U>' interface type='UnsafeMutablePointer<U>' access=private let readImpl=stored immutable)

(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:21 - line:23:46]
(member_ref_expr type='@lvalue U' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:21 - line:23:36] decl=Swift.(file).UnsafeMutablePointer.pointee [with (substitution_map generic_signature=<Pointee> (substitution Pointee -> U))]
(declref_expr type='UnsafeMutablePointer<U>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:21 - line:23:21] decl=StubKit.(file).Stub extension.Injector.set(_:value:).explicit closure discriminator=0.explicit closure discriminator=0.pointerToValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:22:25 function_ref=unapplied))
(declref_expr type='U' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:23:46 - line:23:46] decl=StubKit.(file).Stub extension.Injector.set(_:value:).value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:15:54 function_ref=unapplied)))))))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:9 - line:34:9] "inject(to:)" interface type='<T where T : Decodable> (Stub<T>.Injector) -> (T) throws -> T' access=internal
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list
(parameter "instance" apiName=to interface type='T') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:20 - line:28:35])
(result
(type_ident
(component id='T' bind=StubKit.(file).Stub extension.T)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:49 - line:34:9]
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:13 - line:29:28]
(pattern_named type='T' 'instance')
(declref_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:28 - line:29:28] decl=StubKit.(file).Stub extension.Injector.inject(to:).instance@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:24 function_ref=unapplied))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:17 - line:29:17] "instance" type='T' interface type='T' access=private readImpl=stored writeImpl=stored readWriteImpl=stored)

(try_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:13 - line:32:13]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 - line:32:13] throws arg_labels=_:
(dot_syntax_call_expr type='(((inout T) throws -> Void) throws -> Void) throws -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 - line:30:27] nothrow
(declref_expr type='([(inout T) throws -> Void]) -> (((inout T) throws -> Void) throws -> Void) throws -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:27 - line:30:27] decl=Swift.(file).Sequence extension.forEach [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [(inout T) throws -> Void]))] function_ref=single)
(load_expr implicit type='[(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 - line:30:17]
(member_ref_expr type='@lvalue [(inout T) throws -> Void]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 - line:30:17] decl=StubKit.(file).Stub extension.Injector.mutations@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:5:13 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:17 - line:30:17] decl=StubKit.(file).Stub extension.Injector.inject(to:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:14 function_ref=unapplied))))
(paren_expr type='(((inout T) throws -> Void) throws -> Void)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:35 - line:32:13] trailing-closure
(closure_expr type='((inout T) throws -> Void) throws -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:35 - line:32:13] discriminator=0 captures=(<generic> instance<direct><noescape>) single-expression
(parameter_list
(parameter "mutation" type='(inout T) throws -> Void' interface type='(inout T) throws -> Void') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:37 - line:30:37])
(try_expr type='Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:17 - line:31:39]
(call_expr type='Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:21 - line:31:39] throws arg_labels=_:
(declref_expr type='(inout T) throws -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:21 - line:31:21] decl=StubKit.(file).Stub extension.Injector.inject(to:).explicit closure discriminator=0.mutation@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:30:37 function_ref=single)
(paren_expr type='(inout T)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:29 - line:31:39]
(inout_expr type='inout T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:30 - line:31:31]
(declref_expr type='@lvalue T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:31:31 - line:31:31] decl=StubKit.(file).Stub extension.Injector.inject(to:).instance@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:17 function_ref=unapplied)))))))))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:33:13 - line:33:20]
(load_expr implicit type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:33:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:33:20 - line:33:20]
(declref_expr type='@lvalue T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:33:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:33:20 - line:33:20] decl=StubKit.(file).Stub extension.Injector.inject(to:).instance@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:29:17 function_ref=unapplied)))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:4:18 - line:4:18] "init()" interface type='<T where T : Decodable> (Stub<T>.Injector.Type) -> () -> Stub<T>.Injector' access=internal designated
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit
(return_stmt implicit)))
(destructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:4:18 - line:4:18] "deinit" interface type='<T where T : Decodable> (Stub<T>.Injector) -> () -> ()' access=public @objc
(parameter "self" interface type='Stub<T>.Injector')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:4:18 - line:4:18]))))
(enum_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:38:8 - line:40:1] "InjectionError" interface type='InjectionError.Type' access=public non-resilient inherits: Error
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:39:5 - line:39:66]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:39:10 - line:39:66] "unsupportedProperty(keyPath:message:)" interface type='(InjectionError.Type) -> (AnyKeyPath, String) -> InjectionError' access=public))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:39:10 - line:39:66] "unsupportedProperty(keyPath:message:)" interface type='(InjectionError.Type) -> (AnyKeyPath, String) -> InjectionError' access=public)))(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift"
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:1:1 - line:116:1] "EnumStubProvider" interface type='EnumStubProvider.Type' access=internal non-resilient inherits: StubProvider
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:15:5 - line:25:5] "isEnum(_:)" interface type='(EnumStubProvider.Type) -> (Any.Type) -> Bool' access=internal type
(parameter "self" interface type='EnumStubProvider.Type')
(parameter_list
(parameter "type" interface type='Any.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:15:23 - line:15:40])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:15:50 - line:25:5]
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:9 - line:16:77]
(pattern_named type='UnsafePointer<UInt8>' 'typeMetadata')
(call_expr type='UnsafePointer<UInt8>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:28 - line:16:77] nothrow arg_labels=_:to:
(declref_expr type='(Any.Type, UnsafePointer<UInt8>.Type) -> UnsafePointer<UInt8>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:28 - line:16:28] decl=Swift.(file).unsafeBitCast(_:to:) [with (substitution_map generic_signature=<T, U> (substitution T -> Any.Type) (substitution U -> UnsafePointer<UInt8>))] function_ref=single)
(tuple_expr type='(Any.Type, to: UnsafePointer<UInt8>.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:41 - line:16:77] names='',to
(declref_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:42 - line:16:42] decl=StubKit.(file).EnumStubProvider.isEnum(_:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:15:26 function_ref=unapplied)
(dot_self_expr type='UnsafePointer<UInt8>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:52 - line:16:73]
(type_expr type='UnsafePointer<UInt8>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:52 - line:16:71] typerepr='UnsafePointer<UInt8>')))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:13 - line:16:13] "typeMetadata" type='UnsafePointer<UInt8>' interface type='UnsafePointer<UInt8>' access=private let readImpl=stored immutable)

(if_config_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:19:9 - line:23:9]
#if: active
(call_expr type='<null>' arg_labels=_:
(unresolved_decl_ref_expr type='<null>' name=compiler function_ref=unapplied)
(paren_expr type='<null>'
(prefix_unary_expr type='<null>'
(unresolved_decl_ref_expr type='<null>' name=>= function_ref=unapplied)
(paren_expr implicit type='<null>'
(integer_literal_expr type='<null>' value=5)))))
(elements
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:9 - line:20:24]
(pattern_named type='Int' 'enumKind')
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] value=1))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:13 - line:20:13] "enumKind" type='Int' interface type='Int' access=private let readImpl=stored immutable))
#else:
(elements))

(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:9 - line:20:24]
(pattern_named type='Int' 'enumKind')
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:24 - line:20:24] value=1))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:13 - line:20:13] "enumKind" type='Int' interface type='Int' access=private let readImpl=stored immutable)

(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:9 - line:24:40]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 - line:24:40] nothrow
(dot_syntax_call_expr implicit type='(UInt8, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 - line:24:37] nothrow
(declref_expr type='(UInt8.Type) -> (UInt8, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 - line:24:37] decl=Swift.(file).BinaryInteger extension.== [with (substitution_map generic_signature=<Self, Other where Self : BinaryInteger, Other : BinaryInteger> (substitution Self -> UInt8) (substitution Other -> Int))] function_ref=unapplied)
(type_expr implicit type='UInt8.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:37 - line:24:37] typerepr='UInt8'))
(tuple_expr implicit type='(UInt8, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 - line:24:40]
(member_ref_expr type='UInt8' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 - line:24:29] decl=Swift.(file).UnsafePointer.pointee [with (substitution_map generic_signature=<Pointee> (substitution Pointee -> UInt8))]
(declref_expr type='UnsafePointer<UInt8>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:16 - line:24:16] decl=StubKit.(file).EnumStubProvider.isEnum(_:).typeMetadata@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:16:13 function_ref=unapplied))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:24:40 - line:24:40] decl=StubKit.(file).EnumStubProvider.isEnum(_:).enumKind@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:20:13 function_ref=unapplied))))))
(enum_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:27:5 - line:52:5] "EnumKind" interface type='EnumStubProvider.EnumKind.Type' access=internal non-resilient
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:38:9 - line:38:14]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:38:14 - line:38:14] "noPayload" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:38:14 - line:38:14] "noPayload" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal)
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:45:9 - line:45:14]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:45:14 - line:45:14] "payload" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:45:14 - line:45:14] "payload" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal)
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:51:9 - line:51:14]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:51:14 - line:51:14] "noCases" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:51:14 - line:51:14] "noCases" interface type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' access=internal)
(func_decl implicit "__derived_enum_equals(_:_:)" interface type='(EnumStubProvider.EnumKind.Type) -> (EnumStubProvider.EnumKind, EnumStubProvider.EnumKind) -> Bool' access=internal type
(parameter "self" interface type='EnumStubProvider.EnumKind.Type')
(parameter_list
(parameter "a" type='EnumStubProvider.EnumKind' interface type='EnumStubProvider.EnumKind')
(parameter "b" type='EnumStubProvider.EnumKind' interface type='EnumStubProvider.EnumKind'))
(brace_stmt implicit
(pattern_binding_decl implicit
(pattern_typed implicit type='Int'
(pattern_named implicit type='Int' 'index_a')))

(switch_stmt implicit
(declref_expr implicit type='EnumStubProvider.EnumKind' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).a function_ref=unapplied)
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_a function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=0))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_a function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=1))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_a function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=2)))))))
(pattern_binding_decl implicit
(pattern_typed implicit type='Int'
(pattern_named implicit type='Int' 'index_b')))

(switch_stmt implicit
(declref_expr implicit type='EnumStubProvider.EnumKind' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).b function_ref=unapplied)
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_b function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=0))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_b function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=1))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_b function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=2)))))))
(return_stmt implicit
(binary_expr implicit type='Bool' nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' nothrow
(declref_expr implicit type='(Int.Type) -> (Int, Int) -> Bool' decl=Swift.(file).Int.== function_ref=double)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(Int, Int)'
(load_expr implicit type='Int'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_a function_ref=unapplied))
(load_expr implicit type='Int'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.__derived_enum_equals(_:_:).index_b function_ref=unapplied)))))))
(accessor_decl implicit 'anonname=0x7f8ed53886c8' interface type='(EnumStubProvider.EnumKind) -> () -> Int' access=internal get_for=hashValue
(parameter "self" interface type='EnumStubProvider.EnumKind')
(parameter_list)
(brace_stmt implicit
(return_stmt implicit
(call_expr implicit type='Int' nothrow arg_labels=for:
(declref_expr implicit type='(EnumStubProvider.EnumKind) -> Int' decl=Swift.(file)._hashValue(for:) [with (substitution_map generic_signature=<H where H : Hashable> (substitution H -> EnumStubProvider.EnumKind))] function_ref=single)
(tuple_expr implicit type='(for: EnumStubProvider.EnumKind)' names=for
(declref_expr implicit type='EnumStubProvider.EnumKind' decl=StubKit.(file).EnumStubProvider.EnumKind.<anonymous>.self function_ref=unapplied))))))
(var_decl implicit "hashValue" type='Int' interface type='Int' access=internal readImpl=getter immutable
(accessor_decl implicit 'anonname=0x7f8ed53886c8' interface type='(EnumStubProvider.EnumKind) -> () -> Int' access=internal get_for=hashValue
(parameter "self" interface type='EnumStubProvider.EnumKind')
(parameter_list)
(brace_stmt implicit
(return_stmt implicit
(call_expr implicit type='Int' nothrow arg_labels=for:
(declref_expr implicit type='(EnumStubProvider.EnumKind) -> Int' decl=Swift.(file)._hashValue(for:) [with (substitution_map generic_signature=<H where H : Hashable> (substitution H -> EnumStubProvider.EnumKind))] function_ref=single)
(tuple_expr implicit type='(for: EnumStubProvider.EnumKind)' names=for
(declref_expr implicit type='EnumStubProvider.EnumKind' decl=StubKit.(file).EnumStubProvider.EnumKind.<anonymous>.self function_ref=unapplied)))))))
(pattern_binding_decl implicit
(pattern_typed implicit type='Int'
(pattern_named implicit type='Int' 'hashValue')))
(func_decl implicit "hash(into:)" interface type='(EnumStubProvider.EnumKind) -> (inout Hasher) -> ()' access=internal
(parameter "self" type='EnumStubProvider.EnumKind' interface type='EnumStubProvider.EnumKind')
(parameter_list
(parameter "hasher" apiName=into interface type='Hasher' inout))
(brace_stmt implicit
(pattern_binding_decl implicit
(pattern_typed implicit type='Int'
(pattern_named implicit type='Int' 'discriminator')))

(switch_stmt implicit
(declref_expr implicit type='EnumStubProvider.EnumKind' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).self function_ref=unapplied)
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).discriminator function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=0))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).discriminator function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=1))))))
(case_stmt implicit
(case_label_item
(pattern_enum_element implicit type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind._))
(brace_stmt implicit
(assign_expr implicit type='()'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).discriminator function_ref=unapplied)
(call_expr implicit type='Int' nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' typerepr='<<NULL>>'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' names=_builtinIntegerLiteral
(integer_literal_expr implicit type='Builtin.IntLiteral' value=2)))))))
(call_expr implicit type='()' nothrow arg_labels=_:
(dot_syntax_call_expr implicit type='(Int) -> ()' nothrow
(declref_expr implicit type='(inout Hasher) -> (Int) -> ()' decl=Swift.(file).Hasher.combine [with (substitution_map generic_signature=<H where H : Hashable> (substitution H -> Int))] function_ref=single)
(inout_expr implicit type='inout Hasher'
(declref_expr implicit type='@lvalue Hasher' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).hasher function_ref=unapplied)))
(paren_expr implicit type='(Int)'
(load_expr implicit type='Int'
(declref_expr implicit type='@lvalue Int' decl=StubKit.(file).EnumStubProvider.EnumKind.hash(into:).discriminator function_ref=unapplied)))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:57:5 - line:87:5] "enumKind(_:)" interface type='(EnumStubProvider.Type) -> (Any.Type) -> EnumStubProvider.EnumKind' access=internal type
(parameter "self" interface type='EnumStubProvider.Type')
(parameter_list
(parameter "type" interface type='Any.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:57:25 - line:57:42])
(result
(type_ident
(component id='EnumKind' bind=StubKit.(file).EnumStubProvider.EnumKind@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:27:10)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:57:56 - line:87:5]
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:59:9 - line:62:9] "TypeMetadata" interface type='TypeMetadata.Type' access=private non-resilient
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:13 - line:60:23]
(pattern_typed type='UInt8'
(pattern_named type='UInt8' 'kind')
(type_ident
(component id='UInt8' bind=Swift.(file).UInt8))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 - line:60:17] "kind" type='UInt8' interface type='UInt8' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 - line:60:17] 'anonname=0x7f8ed7a16740' interface type='(TypeMetadata) -> () -> UInt8' access=internal get_for=kind
(parameter "self" interface type='TypeMetadata')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 - line:60:17]
(return_stmt implicit
(member_ref_expr implicit type='UInt8' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.kind@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 direct_to_storage
(declref_expr implicit type='TypeMetadata' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 - line:60:17] 'anonname=0x7f8ed7a16740' interface type='(TypeMetadata) -> () -> UInt8' access=internal get_for=kind
(parameter "self" interface type='TypeMetadata')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 - line:60:17]
(return_stmt implicit
(member_ref_expr implicit type='UInt8' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.kind@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 direct_to_storage
(declref_expr implicit type='TypeMetadata' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:60:17 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:13 - line:61:61]
(pattern_typed type='UnsafePointer<TypeDescriptor>'
(pattern_named type='UnsafePointer<TypeDescriptor>' 'typeDescriptor')
(type_ident
(component id='UnsafePointer' bind=Swift.(file).UnsafePointer)
(type_ident
(component id='TypeDescriptor' bind=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:67:16)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 - line:61:17] "typeDescriptor" type='UnsafePointer<TypeDescriptor>' interface type='UnsafePointer<TypeDescriptor>' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 - line:61:17] 'anonname=0x7f8ed7a16910' interface type='(TypeMetadata) -> () -> UnsafePointer<TypeDescriptor>' access=internal get_for=typeDescriptor
(parameter "self" interface type='TypeMetadata')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 - line:61:17]
(return_stmt implicit
(member_ref_expr implicit type='UnsafePointer<TypeDescriptor>' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.typeDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 direct_to_storage
(declref_expr implicit type='TypeMetadata' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 - line:61:17] 'anonname=0x7f8ed7a16910' interface type='(TypeMetadata) -> () -> UnsafePointer<TypeDescriptor>' access=internal get_for=typeDescriptor
(parameter "self" interface type='TypeMetadata')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 - line:61:17]
(return_stmt implicit
(member_ref_expr implicit type='UnsafePointer<TypeDescriptor>' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.typeDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 direct_to_storage
(declref_expr implicit type='TypeMetadata' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17 function_ref=unapplied)))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:59:16 - line:59:16] "init(kind:typeDescriptor:)" interface type='(TypeMetadata.Type) -> (UInt8, UnsafePointer<TypeDescriptor>) -> TypeMetadata' access=internal designated
(parameter "self" interface type='TypeMetadata' inout)
(parameter_list
(parameter "kind" apiName=kind interface type='UInt8')
(parameter "typeDescriptor" apiName=typeDescriptor interface type='UnsafePointer<TypeDescriptor>') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:59:16 - line:59:16])))

(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:67:9 - line:76:9] "TypeDescriptor" interface type='TypeDescriptor.Type' access=private non-resilient
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:13 - line:68:30]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'contextFlag')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 - line:68:17] "contextFlag" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 - line:68:17] 'anonname=0x7f8ed7a11568' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=contextFlag
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 - line:68:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.contextFlag@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 - line:68:17] 'anonname=0x7f8ed7a11568' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=contextFlag
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 - line:68:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.contextFlag@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:68:17 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:13 - line:69:25]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'parent')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 - line:69:17] "parent" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 - line:69:17] 'anonname=0x7f8ed7a11738' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=parent
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 - line:69:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.parent@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 - line:69:17] 'anonname=0x7f8ed7a11738' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=parent
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 - line:69:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.parent@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:69:17 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:13 - line:70:23]
(pattern_typed type='Int'
(pattern_named type='Int' 'name')
(type_ident
(component id='Int' bind=Swift.(file).Int))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 - line:70:17] "name" type='Int' interface type='Int' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 - line:70:17] 'anonname=0x7f8ed7a11878' interface type='(TypeDescriptor) -> () -> Int' access=internal get_for=name
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 - line:70:17]
(return_stmt implicit
(member_ref_expr implicit type='Int' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.name@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 - line:70:17] 'anonname=0x7f8ed7a11878' interface type='(TypeDescriptor) -> () -> Int' access=internal get_for=name
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 - line:70:17]
(return_stmt implicit
(member_ref_expr implicit type='Int' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.name@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:70:17 function_ref=unapplied)))))
(if_config_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:71:13 - line:73:13]
#if: active
(call_expr type='<null>' arg_labels=_:
(unresolved_decl_ref_expr type='<null>' name=compiler function_ref=unapplied)
(paren_expr type='<null>'
(prefix_unary_expr type='<null>'
(unresolved_decl_ref_expr type='<null>' name=>= function_ref=unapplied)
(paren_expr implicit type='<null>'
(integer_literal_expr type='<null>' value=5)))))
(elements
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:13 - line:72:44]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'reflectionFieldDescriptor')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17] "reflectionFieldDescriptor" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17] 'anonname=0x7f8ed7a119f0' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=reflectionFieldDescriptor
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.reflectionFieldDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 function_ref=unapplied))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:13 - line:72:44]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'reflectionFieldDescriptor')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17] "reflectionFieldDescriptor" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17] 'anonname=0x7f8ed7a119f0' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=reflectionFieldDescriptor
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.reflectionFieldDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17] 'anonname=0x7f8ed7a119f0' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=reflectionFieldDescriptor
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 - line:72:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.reflectionFieldDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:72:17 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:13 - line:74:31]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'payloadCases')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 - line:74:17] "payloadCases" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 - line:74:17] 'anonname=0x7f8ed7a11b30' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=payloadCases
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 - line:74:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.payloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 - line:74:17] 'anonname=0x7f8ed7a11b30' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=payloadCases
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 - line:74:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.payloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:13 - line:75:33]
(pattern_typed type='Int32'
(pattern_named type='Int32' 'noPayloadCases')
(type_ident
(component id='Int32' bind=Swift.(file).Int32))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 - line:75:17] "noPayloadCases" type='Int32' interface type='Int32' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 - line:75:17] 'anonname=0x7f8ed7a11c70' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=noPayloadCases
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 - line:75:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.noPayloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 - line:75:17] 'anonname=0x7f8ed7a11c70' interface type='(TypeDescriptor) -> () -> Int32' access=internal get_for=noPayloadCases
(parameter "self" interface type='TypeDescriptor')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 - line:75:17]
(return_stmt implicit
(member_ref_expr implicit type='Int32' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.noPayloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 direct_to_storage
(declref_expr implicit type='TypeDescriptor' decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17 function_ref=unapplied)))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:67:16 - line:67:16] "init(contextFlag:parent:name:reflectionFieldDescriptor:payloadCases:noPayloadCases:)" interface type='(TypeDescriptor.Type) -> (Int32, Int32, Int, Int32, Int32, Int32) -> TypeDescriptor' access=internal designated
(parameter "self" interface type='TypeDescriptor' inout)
(parameter_list
(parameter "contextFlag" apiName=contextFlag interface type='Int32')
(parameter "parent" apiName=parent interface type='Int32')
(parameter "name" apiName=name interface type='Int')
(parameter "reflectionFieldDescriptor" apiName=reflectionFieldDescriptor interface type='Int32')
(parameter "payloadCases" apiName=payloadCases interface type='Int32')
(parameter "noPayloadCases" apiName=noPayloadCases interface type='Int32') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:67:16 - line:67:16])))

(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:9 - line:78:86]
(pattern_named type='TypeMetadata' 'typeMetadata')
(member_ref_expr type='TypeMetadata' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:86 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:28 - line:78:86] decl=Swift.(file).UnsafePointer.pointee [with (substitution_map generic_signature=<Pointee> (substitution Pointee -> TypeMetadata))]
(call_expr type='UnsafePointer<TypeMetadata>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:28 - line:78:84] nothrow arg_labels=_:to:
(declref_expr type='(Any.Type, UnsafePointer<TypeMetadata>.Type) -> UnsafePointer<TypeMetadata>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:28 - line:78:28] decl=Swift.(file).unsafeBitCast(_:to:) [with (substitution_map generic_signature=<T, U> (substitution T -> Any.Type) (substitution U -> UnsafePointer<TypeMetadata>))] function_ref=single)
(tuple_expr type='(Any.Type, to: UnsafePointer<TypeMetadata>.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:41 - line:78:84] names='',to
(declref_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:42 - line:78:42] decl=StubKit.(file).EnumStubProvider.enumKind(_:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:57:28 function_ref=unapplied)
(dot_self_expr type='UnsafePointer<TypeMetadata>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:52 - line:78:80]
(type_expr type='UnsafePointer<TypeMetadata>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:52 - line:78:78] typerepr='UnsafePointer<TypeMetadata>'))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:13 - line:78:13] "typeMetadata" type='TypeMetadata' interface type='TypeMetadata' access=private let readImpl=stored immutable)

(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:9 - line:79:54]
(pattern_named type='TypeDescriptor' 'descriptor')
(member_ref_expr type='TypeDescriptor' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:26 - line:79:54] decl=Swift.(file).UnsafePointer.pointee [with (substitution_map generic_signature=<Pointee> (substitution Pointee -> TypeDescriptor))]
(member_ref_expr type='UnsafePointer<TypeDescriptor>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:26 - line:79:39] decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeMetadata.typeDescriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:61:17
(declref_expr type='TypeMetadata' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:26 - line:79:26] decl=StubKit.(file).EnumStubProvider.enumKind(_:).typeMetadata@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:78:13 function_ref=unapplied))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:13 - line:79:13] "descriptor" type='TypeDescriptor' interface type='TypeDescriptor' access=private let readImpl=stored immutable)

(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:9 - line:86:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:73] nothrow
(dot_syntax_call_expr implicit type='(Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 - line:80:41] nothrow
(declref_expr type='(Bool.Type) -> (Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 - line:80:41] decl=Swift.(file).Bool extension.&& function_ref=unapplied)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:41 - line:80:41] typerepr='Bool'))
(tuple_expr implicit type='(Bool, @autoclosure () throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:73]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:39] nothrow
(dot_syntax_call_expr implicit type='(Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 - line:80:36] nothrow
(declref_expr type='(Int32.Type) -> (Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 - line:80:36] decl=Swift.(file).Int32.== function_ref=unapplied)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:36 - line:80:36] typerepr='Int32'))
(tuple_expr implicit type='(Int32, Int32)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:39]
(member_ref_expr type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:23] decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.payloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17
(declref_expr type='TypeDescriptor' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:12 - line:80:12] decl=StubKit.(file).EnumStubProvider.enumKind(_:).descriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:13 function_ref=unapplied))
(call_expr implicit type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] nothrow
(declref_expr implicit type='(Int32.Type) -> (IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] decl=Swift.(file).Int32.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] typerepr='Int32'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:39 - line:80:39] value=0)))))
(autoclosure_expr implicit type='() throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 - line:80:73] discriminator=0 captures=(descriptor<direct><noescape>)

(parameter_list)
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 - line:80:73] nothrow
(dot_syntax_call_expr implicit type='(Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 - line:80:70] nothrow
(declref_expr type='(Int32.Type) -> (Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 - line:80:70] decl=Swift.(file).Int32.== function_ref=unapplied)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:70 - line:80:70] typerepr='Int32'))
(tuple_expr implicit type='(Int32, Int32)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 - line:80:73]
(member_ref_expr type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 - line:80:55] decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.noPayloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:75:17
(declref_expr type='TypeDescriptor' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:44 - line:80:44] decl=StubKit.(file).EnumStubProvider.enumKind(_:).descriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:13 function_ref=unapplied))
(call_expr implicit type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] nothrow
(declref_expr implicit type='(Int32.Type) -> (IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] decl=Swift.(file).Int32.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] typerepr='Int32'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:73 - line:80:73] value=0))))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:80:75 - line:82:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:13 - line:81:21]
(dot_syntax_call_expr type='EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:20 - line:81:21] nothrow
(declref_expr type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:21 - line:81:21] decl=StubKit.(file).EnumStubProvider.EnumKind.noCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:51:14 function_ref=compound)
(type_expr implicit type='EnumStubProvider.EnumKind.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:81:20 - line:81:20] typerepr='EnumStubProvider.EnumKind'))))
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:16 - line:86:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 - line:82:46] nothrow
(dot_syntax_call_expr implicit type='(Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 - line:82:43] nothrow
(declref_expr type='(Int32.Type) -> (Int32, Int32) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 - line:82:43] decl=Swift.(file).Int32.== function_ref=unapplied)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:43 - line:82:43] typerepr='Int32'))
(tuple_expr implicit type='(Int32, Int32)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 - line:82:46]
(member_ref_expr type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 - line:82:30] decl=StubKit.(file).EnumStubProvider.enumKind(_:).TypeDescriptor.payloadCases@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:74:17
(declref_expr type='TypeDescriptor' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:19 - line:82:19] decl=StubKit.(file).EnumStubProvider.enumKind(_:).descriptor@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:79:13 function_ref=unapplied))
(call_expr implicit type='Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] nothrow
(declref_expr implicit type='(Int32.Type) -> (IntLiteral) -> Int32' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] decl=Swift.(file).Int32.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int32.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] typerepr='Int32'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:46 - line:82:46] value=0)))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:82:48 - line:84:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:13 - line:83:21]
(dot_syntax_call_expr type='EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:20 - line:83:21] nothrow
(declref_expr type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:21 - line:83:21] decl=StubKit.(file).EnumStubProvider.EnumKind.noPayload@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:38:14 function_ref=compound)
(type_expr implicit type='EnumStubProvider.EnumKind.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:83:20 - line:83:20] typerepr='EnumStubProvider.EnumKind'))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:84:16 - line:86:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:13 - line:85:21]
(dot_syntax_call_expr type='EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:20 - line:85:21] nothrow
(declref_expr type='(EnumStubProvider.EnumKind.Type) -> EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:21 - line:85:21] decl=StubKit.(file).EnumStubProvider.EnumKind.payload@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:45:14 function_ref=compound)
(type_expr implicit type='EnumStubProvider.EnumKind.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:85:20 - line:85:20] typerepr='EnumStubProvider.EnumKind'))))))))
(enum_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:89:5 - line:93:5] "Error" interface type='EnumStubProvider.Error.Type' access=internal non-resilient inherits: Error
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:90:9 - line:90:34]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:90:14 - line:90:34] "notEnumType(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:90:14 - line:90:34] "notEnumType(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal)
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:91:9 - line:91:47]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:91:14 - line:91:47] "notSupportingPayloadEnum(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:91:14 - line:91:47] "notSupportingPayloadEnum(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal)
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:92:9 - line:92:47]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:92:14 - line:92:47] "notSupportingNoCasesEnum(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:92:14 - line:92:47] "notSupportingNoCasesEnum(_:)" interface type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' access=internal))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:5 - line:111:5] "stub(of:)" <T> interface type='<T> (EnumStubProvider.Type) -> (T.Type) throws -> T' access=internal captures=(<generic> ) type
(parameter "self" interface type='EnumStubProvider.Type')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:24 - line:100:40])
(result
(type_ident
(component id='T' bind=StubKit.(file).EnumStubProvider.stub(of:).T@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:22)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:54 - line:111:5]
(guard_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:9 - line:101:84]
(call_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:15 - line:101:43] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:15 - line:101:32] nothrow
(declref_expr type='(EnumStubProvider.Type) -> (Any.Type) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:32 - line:101:32] decl=StubKit.(file).EnumStubProvider.isEnum@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:15:17 function_ref=single)
(type_expr type='EnumStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:15 - line:101:15] typerepr='EnumStubProvider'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:38 - line:101:43]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:39 - line:101:39]
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:39 - line:101:39] decl=StubKit.(file).EnumStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:28 function_ref=unapplied))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:50 - line:101:84]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:52 - line:101:82]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:58 - line:101:82]
(normal_conformance type=EnumStubProvider.Error protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:58 - line:101:82] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:58 - line:101:64] nothrow
(declref_expr type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:64 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:64 - line:101:64] decl=StubKit.(file).EnumStubProvider.Error.notEnumType@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:90:14 function_ref=single)
(type_expr type='EnumStubProvider.Error.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:58 - line:101:58] typerepr='Error'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:75 - line:101:82]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 - line:101:78]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 - line:101:78]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:101:76 - line:101:76] typerepr='T')))))))))
(switch_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:9 - line:110:9]
(call_expr type='EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:16 - line:102:46] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:16 - line:102:33] nothrow
(declref_expr type='(EnumStubProvider.Type) -> (Any.Type) -> EnumStubProvider.EnumKind' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:33 - line:102:33] decl=StubKit.(file).EnumStubProvider.enumKind@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:57:17 function_ref=single)
(type_expr type='EnumStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:16 - line:102:16] typerepr='EnumStubProvider'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:41 - line:102:46]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:42 - line:102:42]
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:102:42 - line:102:42] decl=StubKit.(file).EnumStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:28 function_ref=unapplied))))
(case_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:103:9 - line:105:63]
(case_label_item
(pattern_enum_element type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind.noPayload))
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:13 - line:105:63]
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:13 - line:104:78]
(pattern_named type='UnsafeRawPointer' 'rawPointer')
(call_expr type='UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:30 - line:104:78] nothrow arg_labels=to:_:
(declref_expr type='(Int, (UnsafePointer<Int>) throws -> UnsafeRawPointer) throws -> UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:30 - line:104:30] decl=Swift.(file).withUnsafePointer(to:_:) [with (substitution_map generic_signature=<T, Result> (substitution T -> Int) (substitution Result -> UnsafeRawPointer))] function_ref=single)
(tuple_expr type='(to: Int, (UnsafePointer<Int>) throws -> UnsafeRawPointer)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:47 - line:104:78] trailing-closure names=to,''
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:52 - line:104:52] value=0)))
(function_conversion_expr implicit type='(UnsafePointer<Int>) throws -> UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 - line:104:78]
(closure_expr type='(UnsafePointer<Int>) -> UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 - line:104:78] discriminator=0 single-expression
(parameter_list
(parameter "$0" type='UnsafePointer<Int>' interface type='UnsafePointer<Int>') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 - line:104:55])
(call_expr type='UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 - line:104:76] nothrow arg_labels=_:
(constructor_ref_call_expr type='(UnsafeRawPointer) -> UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 - line:104:57] nothrow
(declref_expr implicit type='(UnsafeRawPointer.Type) -> (UnsafeRawPointer) -> UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 - line:104:57] decl=Swift.(file)._Pointer extension.init(_:) [with (substitution_map generic_signature=<Self where Self : _Pointer> (substitution Self -> UnsafeRawPointer))] function_ref=single)
(type_expr type='UnsafeRawPointer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:57 - line:104:57] typerepr='UnsafeRawPointer'))
(paren_expr type='(UnsafeRawPointer)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:74 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:73 - line:104:76]
(pointer_to_pointer implicit type='UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:74 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:74 - line:104:74]
(declref_expr type='UnsafePointer<Int>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:74 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:74 - line:104:74] decl=StubKit.(file).EnumStubProvider.stub(of:).explicit closure discriminator=0.$0@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:55 function_ref=unapplied)))))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:17 - line:104:17] "rawPointer" type='UnsafeRawPointer' interface type='UnsafeRawPointer' access=private let readImpl=stored immutable)

(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:13 - line:105:63]
(member_ref_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:63 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:20 - line:105:63] decl=Swift.(file).UnsafePointer.pointee [with (substitution_map generic_signature=<Pointee> (substitution Pointee -> T))]
(call_expr type='UnsafePointer<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:20 - line:105:61] nothrow arg_labels=to:
(dot_syntax_call_expr type='(T.Type) -> UnsafePointer<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:20 - line:105:31] nothrow
(declref_expr type='(UnsafeRawPointer) -> (T.Type) -> UnsafePointer<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:31 - line:105:31] decl=Swift.(file).UnsafeRawPointer.assumingMemoryBound(to:) [with (substitution_map generic_signature=<T> (substitution T -> T))] function_ref=single)
(declref_expr type='UnsafeRawPointer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:20 - line:105:20] decl=StubKit.(file).EnumStubProvider.stub(of:).rawPointer@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:104:17 function_ref=unapplied))
(tuple_expr type='(to: T.Type)' location=/
Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:50 - line:105:61] names=to
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:55 - line:105:57]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:105:55 - line:105:55] typerepr='T'))))))))
(case_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:106:9 - line:107:54]
(case_label_item
(pattern_enum_element type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind.payload))
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:13 - line:107:54]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:13 - line:107:54]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:19 - line:107:54]
(normal_conformance type=EnumStubProvider.Error protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:19 - line:107:54] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:19 - line:107:25] nothrow
(declref_expr type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:25 - line:107:25] decl=StubKit.(file).EnumStubProvider.Error.notSupportingPayloadEnum@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:91:14 function_ref=single)
(type_expr type='EnumStubProvider.Error.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:19 - line:107:19] typerepr='Error'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:49 - line:107:54]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:50 - line:107:50]
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:107:50 - line:107:50] decl=StubKit.(file).EnumStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:28 function_ref=unapplied))))))))
(case_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:108:9 - line:109:54]
(case_label_item
(pattern_enum_element type='EnumStubProvider.EnumKind' EnumStubProvider.EnumKind.noCases))
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:13 - line:109:54]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:13 - line:109:54]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:19 - line:109:54]
(normal_conformance type=EnumStubProvider.Error protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:19 - line:109:54] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:19 - line:109:25] nothrow
(declref_expr type='(EnumStubProvider.Error.Type) -> (Any.Type) -> EnumStubProvider.Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:25 - line:109:25] decl=StubKit.(file).EnumStubProvider.Error.notSupportingNoCasesEnum@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:92:14 function_ref=single)
(type_expr type='EnumStubProvider.Error.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:19 - line:109:19] typerepr='Error'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:49 - line:109:54]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:50 - line:109:50]
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:50 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:109:50 - line:109:50] decl=StubKit.(file).EnumStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:28 function_ref=unapplied)))))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:113:5 - line:115:5] "stub(of:)" <T> interface type='<T> (EnumStubProvider) -> (T.Type) -> T?' access=internal captures=(<generic> )
(parameter "self" interface type='EnumStubProvider')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:113:17 - line:113:33])
(result
)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:113:41 - line:115:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:9 - line:114:51]
(optional_try_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:16 - line:114:51]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:21 - line:114:51] throws arg_labels=of:
(dot_syntax_call_expr type='(T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:21 - line:114:38] nothrow
(declref_expr type='(EnumStubProvider.Type) -> (T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:38 - line:114:38] decl=StubKit.(file).EnumStubProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:100:17 [with (substitution_map generic_signature=<T> (substitution T -> T))] function_ref=single)
(type_expr type='EnumStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:21 - line:114:21] typerepr='EnumStubProvider'))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:42 - line:114:51] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:114:47 - line:114:47] decl=StubKit.(file).EnumStubProvider.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:113:21 function_ref=unapplied)))))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/EnumStubProvider.swift:1:8 - line:1:8] "init()" interface type='(EnumStubProvider.Type) -> () -> EnumStubProvider' access=internal designated
(parameter "self" interface type='EnumStubProvider' inout)
(parameter_list)
(brace_stmt implicit
(return_stmt implicit)))))
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift"
(protocol range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:2:8 - line:4:1] "Stubbable" <Self : Stubbable> interface type='Stubbable.Protocol' access=public non-resilient requirement signature=<Self>
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:3:5 - line:3:27] "stub()" interface type='<Self where Self : Stubbable> (Self.Type) -> () -> Self' access=public type
(parameter "self" interface type='Self.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:3:21 - line:3:22])
(result
(type_ident
(component id='Self' bind=none)))))
(protocol range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:7:10 - line:9:1] "DefaultStubbable" <Self : DefaultStubbable> interface type='DefaultStubbable.Protocol' access=internal non-resilient requirement signature=<Self>
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:8:5 - line:8:34] "defaultStub()" interface type='<Self where Self : DefaultStubbable> (Self.Type) -> () -> Self' access=internal type
(parameter "self" interface type='Self.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Stubbable.swift:8:28 - line:8:29])
(result
(type_ident
(component id='Self' bind=none))))))
(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift"
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:1:1 - line:5:1] String inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:2:5 - line:4:5] "defaultStub()" interface type='(String.Type) -> () -> String' access=internal type
(parameter "self" interface type='String.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:2:28 - line:2:29])
(result
(type_ident
(component id='String' bind=Swift.(file).String)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:2:41 - line:4:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:3:9 - line:3:16]
(string_literal_expr type='String' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:3:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:3:16 - line:3:16] encoding=utf8 value="This is Stub String" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)))))
(extension_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:7:1 - line:11:1] Character inherits: DefaultStubbable
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:8:5 - line:10:5] "defaultStub()" interface type='(Character.Type) -> () -> Character' access=internal type
(parameter "self" interface type='Character.Type')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:8:28 - line:8:29])
(result
(type_ident
(component id='Character' bind=Swift.(file).Character)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:8:44 - line:10:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:9:9 - line:9:16]
(string_literal_expr type='Character' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:9:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/DefaultStubbable/String.swift:9:16 - line:9:16] encoding=utf8 value="🍣" builtin_initializer=Swift.(file).Character extension.init(_builtinExtendedGraphemeClusterLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**))))))(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift"
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:13:8 - line:75:1] "Stub" <T : Decodable> interface type='Stub<T>.Type' access=public non-resilient
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:5 - line:15:18]
(pattern_typed type='StubDecoder'
(pattern_named type='StubDecoder' 'decoder')
(type_ident
(component id='StubDecoder' bind=StubKit.(file).StubDecoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 - line:15:9] "decoder" type='StubDecoder' interface type='StubDecoder' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 - line:15:9] 'anonname=0x7ff209092ed0' interface type='<T where T : Decodable> (Stub<T>) -> () -> StubDecoder' access=internal get_for=decoder
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 - line:15:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoder' decl=StubKit.(file).Stub.decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 - line:15:9] 'anonname=0x7ff209092ed0' interface type='<T where T : Decodable> (Stub<T>) -> () -> StubDecoder' access=internal get_for=decoder
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 - line:15:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoder' decl=StubKit.(file).Stub.decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:5 - line:16:18]
(pattern_typed type='StubDecoderContext'
(pattern_named type='StubDecoderContext' 'context')
(type_ident
(component id='StubDecoderContext' bind=StubKit.(file).StubDecoderContext@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 - line:16:9] "context" type='StubDecoderContext' interface type='StubDecoderContext' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 - line:16:9] 'anonname=0x7ff209093158' interface type='<T where T : Decodable> (Stub<T>) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 - line:16:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 - line:16:9] 'anonname=0x7ff209093158' interface type='<T where T : Decodable> (Stub<T>) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 - line:16:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr implicit type='Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:12 - line:23:5]
(pattern_typed type='Int'
(pattern_named type='Int' 'maxSequenceLength')
(type_ident
(component id='Int' bind=Swift.(file).Int))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16] "maxSequenceLength" type='Int' interface type='Int' access=public readImpl=getter writeImpl=setter readWriteImpl=materialize_to_temporary
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:9 - line:21:48] 'anonname=0x7ff2090379b0' interface type='<T where T : Decodable> (Stub<T>) -> () -> Int' access=public get_for=maxSequenceLength
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:13 - line:21:48]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:15 - line:21:30]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:30]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:30] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:22] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:22] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:9 function_ref=unapplied)))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 - line:22:52] 'anonname=0x7ff209037d00' interface type='<T where T : Decodable> (inout Stub<T>) -> (Int) -> ()' access=public set_for=maxSequenceLength
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "newValue" type='Int' interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 - line:22:9])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:13 - line:22:52]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:43]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:23] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(load_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15]
(declref_expr implicit type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 function_ref=unapplied))))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:43 - line:22:43] decl=StubKit.(file).Stub.<anonymous>.newValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16] 'anonname=0x7ff2090932f8' interface type='<T where T : Decodable> (inout Stub<T>) -> () -> ()' access=public _modify_for=maxSequenceLength
(parameter "self" interface type='Stub<T>' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).Stub.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(inout_expr implicit type='inout Stub<T>'
(declref_expr implicit type='@lvalue Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 function_ref=unapplied))))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:9 - line:21:48] 'anonname=0x7ff2090379b0' interface type='<T where T : Decodable> (Stub<T>) -> () -> Int' access=public get_for=maxSequenceLength
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:13 - line:21:48]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:15 - line:21:30]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:30]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:30] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:22] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:22 - line:21:22] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:21:9 function_ref=unapplied)))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 - line:22:52] 'anonname=0x7ff209037d00' interface type='<T where T : Decodable> (inout Stub<T>) -> (Int) -> ()' access=public set_for=maxSequenceLength
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "newValue" type='Int' interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 - line:22:9])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:13 - line:22:52]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:43]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:23] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(load_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15]
(declref_expr implicit type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:15 - line:22:15] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 function_ref=unapplied))))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:43 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:43 - line:22:43] decl=StubKit.(file).Stub.<anonymous>.newValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:22:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16] 'anonname=0x7ff2090932f8' interface type='<T where T : Decodable> (inout Stub<T>) -> () -> ()' access=public _modify_for=maxSequenceLength
(parameter "self" interface type='Stub<T>' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 - line:20:16]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).Stub.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(inout_expr implicit type='inout Stub<T>'
(declref_expr implicit type='@lvalue Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:20:16 function_ref=unapplied)))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:12 - line:31:5]
(pattern_typed type='Int'
(pattern_named type='Int' 'maxDepth')
(type_ident
(component id='Int' bind=Swift.(file).Int))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16] "maxDepth" type='Int' interface type='Int' access=public readImpl=getter writeImpl=setter readWriteImpl=materialize_to_temporary
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:9 - line:29:39] 'anonname=0x7ff209050c00' interface type='<T where T : Decodable> (Stub<T>) -> () -> Int' access=public get_for=maxDepth
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:13 - line:29:39]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:15 - line:29:30]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:30]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:30] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:22] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:22] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:9 function_ref=unapplied)))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 - line:30:43] 'anonname=0x7ff209050f30' interface type='<T where T : Decodable> (inout Stub<T>) -> (Int) -> ()' access=public set_for=maxDepth
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "newValue" type='Int' interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 - line:30:9])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:13 - line:30:43]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:34]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:23] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(load_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15]
(declref_expr implicit type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 function_ref=unapplied))))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:34 - line:30:34] decl=StubKit.(file).Stub.<anonymous>.newValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16] 'anonname=0x7ff209093538' interface type='<T where T : Decodable> (inout Stub<T>) -> () -> ()' access=public _modify_for=maxDepth
(parameter "self" interface type='Stub<T>' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).Stub.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(inout_expr implicit type='inout Stub<T>'
(declref_expr implicit type='@lvalue Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 function_ref=unapplied))))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:9 - line:29:39] 'anonname=0x7ff209050c00' interface type='<T where T : Decodable> (Stub<T>) -> () -> Int' access=public get_for=maxDepth
(parameter "self" interface type='Stub<T>')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:13 - line:29:39]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:15 - line:29:30]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:30]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:30 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:30] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:22] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:22 - line:29:22] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:29:9 function_ref=unapplied)))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 - line:30:43] 'anonname=0x7ff209050f30' interface type='<T where T : Decodable> (inout Stub<T>) -> (Int) -> ()' access=public set_for=maxDepth
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "newValue" type='Int' interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 - line:30:9])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:13 - line:30:43]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:34]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:23] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(load_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15]
(declref_expr implicit type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:15 - line:30:15] decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 function_ref=unapplied))))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:34 - line:30:34] decl=StubKit.(file).Stub.<anonymous>.newValue@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:30:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16] 'anonname=0x7ff209093538' interface type='<T where T : Decodable> (inout Stub<T>) -> () -> ()' access=public _modify_for=maxDepth
(parameter "self" interface type='Stub<T>' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 - line:28:16]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).Stub.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_impl
(inout_expr implicit type='inout Stub<T>'
(declref_expr implicit type='@lvalue Stub<T>' decl=StubKit.(file).Stub.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:28:16 function_ref=unapplied)))))))
(constructor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:5 - line:36:5] "init(type:provider:context:)" interface type='<T where T : Decodable> (Stub<T>.Type) -> (T.Type, StubProvider, StubDecoderContext) -> Stub<T>' access=internal designated
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "type" apiName=type interface type='T.Type')
(parameter "provider" apiName=provider interface type='StubProvider')
(parameter "context" apiName=context interface type='StubDecoderContext') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:9 - line:33:75])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:77 - line:36:5]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:9 - line:34:105]
(member_ref_expr type='@lvalue StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:9 - line:34:14] decl=StubKit.(file).Stub.decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:9 - line:34:9] decl=StubKit.(file).Stub.init(type:provider:context:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:5 function_ref=unapplied))
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 - line:34:105] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 - line:34:24] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 - line:34:24] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:24 - line:34:24] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:35 - line:34:105] names=codingPath,provider,context,parentTypes
(array_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 - line:34:49]
(semantic_expr
(call_expr implicit type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 - line:34:48] nothrow arg_labels=
(constructor_ref_call_expr implicit type='(CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 - line:34:48] nothrow
(declref_expr implicit type='(Array<CodingKey>.Type) -> (CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 - line:34:48] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=single)
(type_expr implicit type='[CodingKey].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:48 - line:34:48] typerepr='[CodingKey]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: CodingKey...)' tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(tuple_expr implicit type='()')))))
(declref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:62 - line:34:62] decl=StubKit.(file).Stub.init(type:provider:context:).provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:24 function_ref=unapplied)
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:81 - line:34:81] decl=StubKit.(file).Stub.init(type:provider:context:).context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:48 function_ref=unapplied)
(array_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 - line:34:104]
(semantic_expr
(call_expr implicit type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 - line:34:103] nothrow arg_labels=
(constructor_ref_call_expr implicit type='(Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 - line:34:103] nothrow
(declref_expr implicit type='(Array<Any.Type>.Type) -> (Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 - line:34:103] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=single)
(type_expr implicit type='[Any.Type].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:34:103 - line:34:103] typerepr='[Any.Type]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Any.Type...)' tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))]
(tuple_expr implicit type='()'))))))))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:9 - line:35:24]
(member_ref_expr type='@lvalue StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:9 - line:35:14] decl=StubKit.(file).Stub.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:16:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage
(declref_expr type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:9 - line:35:9] decl=StubKit.(file).Stub.init(type:provider:context:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:5 function_ref=unapplied))
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:35:24 - line:35:24] decl=StubKit.(file).Stub.init(type:provider:context:).context@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:48 function_ref=unapplied))
(return_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:36:5 - line:36:5])))
(constructor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:12 - line:47:5] "init(type:provider:)" interface type='<T where T : Decodable> (Stub<T>.Type) -> (T.Type, [StubProvider]) -> Stub<T>' access=public designated
(parameter "self" interface type='Stub<T>' inout)
(parameter_list
(parameter "type" apiName=type type='T.Type' interface type='T.Type' default_arg=normal expression=
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:32 - line:41:34]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:32 - line:41:32] typerepr='T')))
(parameter "provider" apiName=provider type='[StubProvider]' interface type='[StubProvider]' default_arg=normal expression=
(array_expr type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 - line:41:68]
(semantic_expr
(call_expr implicit type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 - line:41:67] nothrow arg_labels=
(constructor_ref_call_expr implicit type='(StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 - line:41:67] nothrow
(declref_expr implicit type='(Array<StubProvider>.Type) -> (StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 - line:41:67] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))] function_ref=single)
(type_expr implicit type='[StubProvider].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:67 - line:41:67] typerepr='[StubProvider]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: StubProvider...)' tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))]
(tuple_expr implicit type='()')))))) range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:16 - line:41:69])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:71 - line:47:5]
(rebind_self_in_constructor_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 - line:46:9]
(call_expr type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 - line:46:9] nothrow arg_labels=type:provider:context:
(dot_syntax_call_expr type='(T.Type, StubProvider, StubDecoderContext) -> Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 - line:42:14] nothrow
(other_constructor_ref_expr type='(inout Stub<T>) -> (T.Type, StubProvider, StubDecoderContext) -> Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:14 - line:42:14] decl=StubKit.(file).Stub.init(type:provider:context:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:33:5 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))])
(inout_expr implicit type='inout Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 - line:42:9]
(declref_expr type='@lvalue Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:9 - line:42:9] decl=StubKit.(file).Stub.init(type:provider:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:12 function_ref=unapplied)))
(tuple_expr type='(type: T.Type, provider: StubProvider, context: StubDecoderContext)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:18 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:42:18 - line:46:9] names=type,provider,context
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:43:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:43:19 - line:43:19] decl=StubKit.(file).Stub.init(type:provider:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:17 function_ref=unapplied)
(erasure_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 - line:44:56]
(specialized_conformance type=[StubProvider] protocol=StubProvider
(substitution_map generic_signature=<Element where Element == StubProvider>
(substitution Element -> <<unresolved concrete type>>))
same_type: StubProvider StubProvider
(normal_conformance type=Array<Element> protocol=StubProvider
(value req=stub(of:) witness=StubKit.(file).Array extension.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:11:17)
same_type: Element StubProvider))
(binary_expr type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 - line:44:56] nothrow
(dot_syntax_call_expr implicit type='(Array<StubProvider>, Array<StubProvider>) -> Array<StubProvider>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 - line:44:32] nothrow
(declref_expr type='(Array<StubProvider>.Type) -> (Array<StubProvider>, Array<StubProvider>) -> Array<StubProvider>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 - line:44:32] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))] function_ref=unapplied)
(type_expr implicit type='Array<StubProvider>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:32 - line:44:32] typerepr='Array<StubProvider>'))
(tuple_expr implicit type='([StubProvider], [StubProvider])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 - line:44:56]
(declref_expr type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:23 - line:44:23] decl=StubKit.(file).Stub.init(type:provider:).provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:40 function_ref=unapplied)
(array_expr type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 - line:44:56]
(call_expr type='BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:55] nothrow arg_labels=
(constructor_ref_call_expr type='() -> BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] nothrow
(declref_expr implicit type='(BuiltinStubProvider.Type) -> () -> BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] decl=StubKit.(file).BuiltinStubProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:1:8 function_ref=single)
(type_expr type='BuiltinStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] typerepr='BuiltinStubProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:54 - line:44:55]))
(semantic_expr
(call_expr implicit type='[StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 - line:44:55] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 - line:44:34] nothrow
(declref_expr implicit type='(Array<StubProvider>.Type) -> (StubProvider...) -> [StubProvider]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 - line:44:34] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))] function_ref=single)
(type_expr implicit type='[StubProvider].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:34 - line:44:34] typerepr='[StubProvider]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: StubProvider...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:55] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> StubProvider))]
(tuple_expr implicit type='(arrayLiteral: StubProvider)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:55] names=arrayLiteral
(erasure_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:55]
(normal_conformance type=BuiltinStubProvider protocol=StubProvider
(value req=stub(of:) witness=StubKit.(file).BuiltinStubProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:2:10))
(call_expr type='BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:55] nothrow arg_labels=
(constructor_ref_call_expr type='() -> BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] nothrow
(declref_expr implicit type='(BuiltinStubProvider.Type) -> () -> BuiltinStubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] decl=StubKit.(file).BuiltinStubProvider.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Provider/BuiltinStubProvider.swift:1:8 function_ref=single)
(type_expr type='BuiltinStubProvider.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:35 - line:44:35] typerepr='BuiltinStubProvider'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:44:54 - line:44:55])))))))))))
(call_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:22 - line:45:62] nothrow arg_labels=maxSequenceLength:maxDepth:
(constructor_ref_call_expr type='(Int, Int) -> StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:22 - line:45:23] nothrow
(declref_expr type='(StubDecoderContext.Type) -> (Int, Int) -> StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:23 - line:45:23] decl=StubKit.(file).StubDecoderContext.init(maxSequenceLength:maxDepth:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:5 function_ref=double)
(type_expr implicit type='StubDecoderContext.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:22 - line:45:22] typerepr='StubDecoderContext'))
(tuple_expr type='(maxSequenceLength: Int, maxDepth: Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:27 - line:45:62] names=maxSequenceLength,maxDepth
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:47 - line:45:47] value=60)))
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:45:61 - line:45:61] value=2))))))))
(return_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:47:5 - line:47:5])))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:12 - line:64:5] "make(_:)" interface type='<T where T : Decodable> (Stub<T>) -> ((Stub<T>.Injector) -> Void) throws -> T' access=public
(parameter "self" interface type='Stub<T>')
(parameter_list
(parameter "mutation" type='(Stub<T>.Injector) -> Void' interface type='(Stub<T>.Injector) -> Void' default_arg=normal expression=
(function_conversion_expr implicit type='(Stub<T>.Injector) -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:55 - line:59:62]
(closure_expr type='(Stub<T>.Injector) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:55 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:55 - line:59:62] discriminator=0 captures=(<generic> ) escaping
(parameter_list
(parameter 'anonname=0x7ff2090525f0' type='Stub<T>.Injector' interface type='Stub<T>.Injector') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:57 - line:59:57])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:55 - line:59:62])))) range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:21 - line:59:63])
(result
(type_ident
(component id='T' bind=StubKit.(file).Stub.T@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:13:20)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:77 - line:64:5]
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:9 - line:60:51]
(pattern_named type='T' 'instance')
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:24 - line:60:51]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 - line:60:51] throws arg_labels=of:
(dot_syntax_call_expr type='(T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 - line:60:36] nothrow
(declref_expr type='(StubDecoder) -> (T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:36 - line:60:36] decl=StubKit.(file).StubDecoder.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(member_ref_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 - line:60:28] decl=StubKit.(file).Stub.decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:15:9 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(declref_expr implicit type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:28 - line:60:28] decl=StubKit.(file).Stub.make(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:17 function_ref=unapplied)))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:40 - line:60:51] names=of
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:45 - line:60:47]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:45 - line:60:45] typerepr='T'))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:13 - line:60:13] "instance" type='T' interface type='T' access=private let readImpl=stored immutable)

(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:9 - line:61:33]
(pattern_named type='Stub<T>.Injector' 'injector')
(call_expr type='Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 - line:61:33] nothrow arg_labels=
(constructor_ref_call_expr type='() -> Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 - line:61:24] nothrow
(declref_expr implicit type='(Stub<T>.Injector.Type) -> () -> Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 - line:61:24] decl=StubKit.(file).Stub extension.Injector.init()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:4:18 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(type_expr type='Stub<T>.Injector.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:24 - line:61:24] typerepr='Injector'))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:32 - line:61:33])))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:13 - line:61:13] "injector" type='Stub<T>.Injector' interface type='Stub<T>.Injector' access=private let readImpl=stored immutable)

(call_expr type='Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:9 - line:62:26] nothrow arg_labels=_:
(declref_expr type='(Stub<T>.Injector) -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:9 - line:62:9] decl=StubKit.(file).Stub.make(_:).mutation@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:24 function_ref=single)
(paren_expr type='(Stub<T>.Injector)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:18 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:17 - line:62:26]
(declref_expr type='Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:18 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:62:18 - line:62:18] decl=StubKit.(file).Stub.make(_:).injector@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:13 function_ref=unapplied)))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:9 - line:63:48]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:16 - line:63:48]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:20 - line:63:48] throws arg_labels=to:
(dot_syntax_call_expr type='(T) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:20 - line:63:29] nothrow
(declref_expr type='(Stub<T>.Injector) -> (T) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:29 - line:63:29] decl=StubKit.(file).Stub extension.Injector.inject(to:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Injector.swift:28:14 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(declref_expr type='Stub<T>.Injector' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:20 - line:63:20] decl=StubKit.(file).Stub.make(_:).injector@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:61:13 function_ref=unapplied))
(tuple_expr type='(to: T)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:35 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:35 - line:63:48] names=to
(declref_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:63:40 - line:63:40] decl=StubKit.(file).Stub.make(_:).instance@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:60:13 function_ref=unapplied)))))))
(func_decl range=[/Users/
yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:12 - line:74:5] "make(_:_:)" interface type='<T where T : Decodable> (Stub<T>.Type) -> (T.Type, (Stub<T>.Injector) -> Void) throws -> T' access=public type
(parameter "self" interface type='Stub<T>.Type')
(parameter_list
(parameter "type" type='T.Type' interface type='T.Type' default_arg=normal expression=
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:46 - line:72:48]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:46 - line:72:46] typerepr='T')))
(parameter "mutation" type='(Stub<T>.Injector) -> Void' interface type='(Stub<T>.Injector) -> Void' default_arg=normal expression=
(function_conversion_expr implicit type='(Stub<T>.Injector) -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:87 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:87 - line:72:94]
(closure_expr type='(Stub<T>.Injector) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:87 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:87 - line:72:94] discriminator=0 captures=(<generic> ) escaping
(parameter_list
(parameter 'anonname=0x7ff209053290' type='Stub<T>.Injector' interface type='Stub<T>.Injector') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:89 - line:72:89])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:87 - line:72:94])))) range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:28 - line:72:95])
(result
(type_ident
(component id='T' bind=StubKit.(file).Stub.T@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:13:20)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:109 - line:74:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:9 - line:73:50]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:16 - line:73:50]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:50] throws arg_labels=_:
(dot_syntax_call_expr type='((Stub<T>.Injector) -> Void) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:37] nothrow
(declref_expr type='(Stub<T>) -> ((Stub<T>.Injector) -> Void) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:37 - line:73:37] decl=StubKit.(file).Stub.make@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:59:17 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(call_expr type='Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:35] nothrow arg_labels=type:
(constructor_ref_call_expr type='(T.Type, [StubProvider]) -> Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:20] nothrow
(declref_expr implicit type='(Stub<T>.Type) -> (T.Type, [StubProvider]) -> Stub<T>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:20] decl=StubKit.(file).Stub.init(type:provider:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:12 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(type_expr type='Stub<T>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:20 - line:73:20] typerepr='Stub'))
(tuple_shuffle_expr implicit type='(type: T.Type, provider: [StubProvider])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:24 - line:73:35] tuple_to_tuple elements=[0, -1] variadic_sources=[] default_args_owner=StubKit.(file).Stub.init(type:provider:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:41:12 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))]
(tuple_expr type='(type: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:24 - line:73:35] names=type
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:31 - line:73:31] decl=StubKit.(file).Stub.make(_:_:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:31 function_ref=unapplied)))))
(paren_expr type='((Stub<T>.Injector) -> Void)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:41 - line:73:50]
(declref_expr type='(Stub<T>.Injector) -> Void' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:73:42 - line:73:42] decl=StubKit.(file).Stub.make(_:_:).mutation@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubKit.swift:72:56 function_ref=unapplied)))))))))(source_file "/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift"
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:1 - line:31:1] "StubDecoder" interface type='StubDecoder.Type' access=internal non-resilient inherits: Decoder
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:5 - line:2:31]
(pattern_typed type='[CodingKey]'
(pattern_named type='[CodingKey]' 'codingPath')
(type_array
(type_ident
(component id='CodingKey' bind=Swift.(file).CodingKey)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 - line:2:9] "codingPath" type='[CodingKey]' interface type='[CodingKey]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 - line:2:9] 'anonname=0x7fa0d32da230' interface type='(StubDecoder) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 - line:2:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 - line:2:9] 'anonname=0x7fa0d32da230' interface type='(StubDecoder) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 - line:2:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:5 - line:3:48]
(pattern_typed type='[CodingUserInfoKey : Any]'
(pattern_named type='[CodingUserInfoKey : Any]' 'userInfo')
(type_dictionary
(type_ident
(component id='CodingUserInfoKey' bind=Swift.(file).CodingUserInfoKey))
(type_composite)))
(dictionary_expr type='[CodingUserInfoKey : Any]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:48]
(semantic_expr
(call_expr implicit type='[CodingUserInfoKey : Any]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:48] nothrow arg_labels=
(constructor_ref_call_expr implicit type='((CodingUserInfoKey, Any)...) -> [CodingUserInfoKey : Any]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:46] nothrow
(declref_expr implicit type='(Dictionary<CodingUserInfoKey, Any>.Type) -> ((CodingUserInfoKey, Any)...) -> [CodingUserInfoKey : Any]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:46] decl=Swift.(file).Dictionary extension.init(dictionaryLiteral:) [with (substitution_map generic_signature=<Key, Value where Key : Hashable> (substitution Key -> CodingUserInfoKey) (substitution Value -> Any))] function_ref=single)
(type_expr implicit type='[CodingUserInfoKey : Any].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:46] typerepr='[CodingUserInfoKey : Any]'))
(tuple_shuffle_expr implicit type='(dictionaryLiteral: (CodingUserInfoKey, Any)...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:48] tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Dictionary extension.init(dictionaryLiteral:) [with (substitution_map generic_signature=<Key, Value where Key : Hashable> (substitution Key -> CodingUserInfoKey) (substitution Value -> Any))]
(tuple_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:46 - line:3:48]))))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 - line:3:9] "userInfo" type='[CodingUserInfoKey : Any]' interface type='[CodingUserInfoKey : Any]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 - line:3:9] 'anonname=0x7fa0d32da420' interface type='(StubDecoder) -> () -> [CodingUserInfoKey : Any]' access=internal get_for=userInfo
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 - line:3:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingUserInfoKey : Any]' decl=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 - line:3:9] 'anonname=0x7fa0d32da420' interface type='(StubDecoder) -> () -> [CodingUserInfoKey : Any]' access=internal get_for=userInfo
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 - line:3:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingUserInfoKey : Any]' decl=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:5 - line:4:19]
(pattern_typed type='StubProvider'
(pattern_named type='StubProvider' 'provider')
(type_ident
(component id='StubProvider' bind=StubKit.(file).StubProvider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:2:17))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 - line:4:9] "provider" type='StubProvider' interface type='StubProvider' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 - line:4:9] 'anonname=0x7fa0d33013e8' interface type='(StubDecoder) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 - line:4:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 - line:4:9] 'anonname=0x7fa0d33013e8' interface type='(StubDecoder) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 - line:4:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:5 - line:5:18]
(pattern_typed type='StubDecoderContext'
(pattern_named type='StubDecoderContext' 'context')
(type_ident
(component id='StubDecoderContext' bind=StubKit.(file).StubDecoderContext@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 - line:5:9] "context" type='StubDecoderContext' interface type='StubDecoderContext' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 - line:5:9] 'anonname=0x7fa0d33052d0' interface type='(StubDecoder) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 - line:5:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoder.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 - line:5:9] 'anonname=0x7fa0d33052d0' interface type='(StubDecoder) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 - line:5:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoder.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:5 - line:13:31]
(pattern_typed type='[Any.Type]'
(pattern_named type='[Any.Type]' 'parentTypes')
(type_array
(type_metatype
(type_composite)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 - line:13:9] "parentTypes" type='[Any.Type]' interface type='[Any.Type]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 - line:13:9] 'anonname=0x7fa0d3305468' interface type='(StubDecoder) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 - line:13:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubDecoder.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 - line:13:9] 'anonname=0x7fa0d3305468' interface type='(StubDecoder) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubDecoder')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 - line:13:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubDecoder.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 direct_to_storage
(declref_expr implicit type='StubDecoder' decl=StubKit.(file).StubDecoder.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9 function_ref=unapplied)))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:5 - line:17:5] "container(keyedBy:)" <Key where Key : CodingKey> interface type='<Key where Key : CodingKey> (StubDecoder) -> (Key.Type) throws -> KeyedDecodingContainer<Key>' access=internal captures=(<generic> )
(parameter "self" interface type='StubDecoder')
(parameter_list
(parameter "type" apiName=keyedBy interface type='Key.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:24 - line:15:47])
(result
(type_ident
(component id='KeyedDecodingContainer' bind=Swift.(file).KeyedDecodingContainer)
(type_ident
(component id='Key' bind=StubKit.(file).StubDecoder.container(keyedBy:).Key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:20))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:108 - line:17:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:9 - line:16:153]
(call_expr type='KeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 - line:16:153] nothrow arg_labels=_:
(constructor_ref_call_expr type='(StubKeyedDecodingContainer<Key>) -> KeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 - line:16:16] nothrow
(declref_expr implicit type='(KeyedDecodingContainer<Key>.Type) -> (StubKeyedDecodingContainer<Key>) -> KeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 - line:16:16] decl=Swift.(file).KeyedDecodingContainer.init(_:) [with (substitution_map generic_signature=<K, Container where K == Container.Key, Container : KeyedDecodingContainerProtocol> (substitution K -> Key) (substitution Container -> StubKeyedDecodingContainer<Key>))] function_ref=single)
(type_expr type='KeyedDecodingContainer<Key>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:16 - line:16:16] typerepr='KeyedDecodingContainer'))
(paren_expr type='(StubKeyedDecodingContainer<Key>)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:38 - line:16:153]
(call_expr type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 - line:16:152] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 - line:16:39] nothrow
(declref_expr implicit type='(StubKeyedDecodingContainer<Key>.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 - line:16:39] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] function_ref=single)
(type_expr type='StubKeyedDecodingContainer<Key>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:39 - line:16:39] typerepr='StubKeyedDecodingContainer'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:65 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:65 - line:16:152] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:78 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:78 - line:16:78] decl=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:78 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:78 - line:16:78] decl=StubKit.(file).StubDecoder.container(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10 function_ref=unapplied))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:100 - line:16:100] decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:100 - line:16:100] decl=StubKit.(file).StubDecoder.container(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:119 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:119 - line:16:119] decl=StubKit.(file).StubDecoder.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:119 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:119 - line:16:119] decl=StubKit.(file).StubDecoder.container(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:141 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:141 - line:16:141] decl=StubKit.(file).StubDecoder.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:141 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:16:141 - line:16:141] decl=StubKit.(file).StubDecoder.container(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10 function_ref=unapplied)))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:5 - line:21:5] "unkeyedContainer()" interface type='(StubDecoder) -> () throws -> UnkeyedDecodingContainer' access=internal
(parameter "self" interface type='StubDecoder')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:26 - line:19:27])
(result
(type_ident
(component id='UnkeyedDecodingContainer' bind=Swift.(file).UnkeyedDecodingContainer)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:64 - line:21:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:9 - line:20:131]
(erasure_expr implicit type='UnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 - line:20:131]
(normal_conformance type=StubUnkeyedDecodingContainer protocol=UnkeyedDecodingContainer
(value req=codingPath witness=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9)
(value req=count witness=StubKit.(file).StubUnkeyedDecodingContainer.count@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9)
(value req=isAtEnd witness=StubKit.(file).StubUnkeyedDecodingContainer.isAtEnd@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:9)
(value req=currentIndex witness=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9)
(value req=decodeNil() witness=StubKit.(file).StubUnkeyedDecodingContainer.decodeNil()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=nestedContainer(keyedBy:) witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19)
(value req=nestedUnkeyedContainer() witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19)
(value req=superDecoder() witness=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19))
(call_expr type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 - line:20:131] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 - line:20:16] nothrow
(declref_expr implicit type='(StubUnkeyedDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 - line:20:16] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=single)
(type_expr type='StubUnkeyedDecodingContainer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:16 - line:20:16] typerepr='StubUnkeyedDecodingContainer'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:44 - line:20:131] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:57 - line:20:57] decl=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:57 - line:20:57] decl=StubKit.(file).StubDecoder.unkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10 function_ref=unapplied))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:79 - line:20:79] decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:79 - line:20:79] decl=StubKit.(file).StubDecoder.unkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:98 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:98 - line:20:98] decl=StubKit.(file).StubDecoder.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:98 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:98 - line:20:98] decl=StubKit.(file).StubDecoder.unkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:120 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:120 - line:20:120] decl=StubKit.(file).StubDecoder.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:120 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:20:120 - line:20:120] decl=StubKit.(file).StubDecoder.unkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10 function_ref=unapplied))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:5 - line:25:5] "singleValueContainer()" interface type='(StubDecoder) -> () throws -> SingleValueDecodingContainer' access=internal
(parameter "self" interface type='StubDecoder')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:30 - line:23:31])
(result
(type_ident
(component id='SingleValueDecodingContainer' bind=Swift.(file).SingleValueDecodingContainer)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:72 - line:25:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:9 - line:24:135]
(erasure_expr implicit type='SingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 - line:24:135]
(normal_conformance type=StubSingleValueDecodingContainer protocol=SingleValueDecodingContainer
(value req=codingPath witness=StubKit.(file).StubSingleValueDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9)
(value req=decodeNil() witness=StubKit.(file).StubSingleValueDecodingContainer.decodeNil()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10)
(value req=decode(_:) witness=StubKit.(file).StubSingleValueDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10))
(call_expr type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 - line:24:135] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 - line:24:16] nothrow
(declref_expr implicit type='(StubSingleValueDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 - line:24:16] decl=StubKit.(file).StubSingleValueDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:54:8 function_ref=single)
(type_expr type='StubSingleValueDecodingContainer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:16 - line:24:16] typerepr='StubSingleValueDecodingContainer'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:48 - line:24:135] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:61 - line:24:61] decl=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:61 - line:24:61] decl=StubKit.(file).StubDecoder.singleValueContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10 function_ref=unapplied))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:83 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:83 - line:24:83] decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:83 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:83 - line:24:83] decl=StubKit.(file).StubDecoder.singleValueContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:102 - line:24:102] decl=StubKit.(file).StubDecoder.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:5:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:102 - line:24:102] decl=StubKit.(file).StubDecoder.singleValueContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:124 - line:24:124] decl=StubKit.(file).StubDecoder.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:13:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:24:124 - line:24:124] decl=StubKit.(file).StubDecoder.singleValueContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10 function_ref=unapplied))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:5 - line:30:5] "stub(of:)" <T : Decodable> interface type='<T where T : Decodable> (StubDecoder) -> (T.Type) throws -> T' access=internal captures=(<generic> )
(parameter "self" interface type='StubDecoder')
(parameter_list
(parameter "type" apiName=of interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:28 - line:27:44])
(result
(type_ident
(component id='T' bind=StubKit.(file).StubDecoder.stub(of:).T@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:15)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:58 - line:30:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:9 - line:28:61]
(pattern
(pattern_optional_some implicit type='T?'
(pattern_let implicit type='T'
(pattern_named type='T' 'stub')))
(open_existential_expr implicit type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:45]
(opaque_value_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:23] @ 0x7fa0d3947510)
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:23] decl=StubKit.(file).StubDecoder.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:4:9
(declref_expr implicit type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:23] decl=StubKit.(file).StubDecoder.stub(of:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 function_ref=unapplied))
(call_expr type='T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:45] nothrow arg_labels=of:
(dot_syntax_call_expr type='(T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:32] nothrow
(declref_expr type='(StubProvider) -> (T.Type) -> T?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:32 - line:28:32] decl=StubKit.(file).StubProvider.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:7:10 [with (substitution_map generic_signature=<Self, T where Self : StubProvider> (substitution Self -> StubProvider) (substitution T -> T))] function_ref=single)
(opaque_value_expr implicit type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:23 - line:28:23] @ 0x7fa0d3947510))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:36 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:36 - line:28:45] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:41 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:41 - line:28:41] decl=StubKit.(file).StubDecoder.stub(of:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:32 function_ref=unapplied)))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:47 - line:28:61]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:49 - line:28:56]
(declref_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:56 - line:28:56] decl=StubKit.(file).StubDecoder.stub(of:).stub@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:28:16 function_ref=unapplied))))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:9 - line:29:32]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:16 - line:29:32]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 - line:29:32] throws arg_labels=from:
(constructor_ref_call_expr type='(Decoder) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 - line:29:20] nothrow
(declref_expr implicit type='(T.Type) -> (Decoder) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 - line:29:20] decl=Swift.(file).Decodable.init(from:) [with (substitution_map generic_signature=<Self where Self : Decodable> (substitution Self -> T))] function_ref=single)
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:20 - line:29:20] typerepr='T'))
(tuple_expr type='(from: Decoder)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:21 - line:29:32] names=from
(erasure_expr implicit type='Decoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:28 - line:29:28]
(normal_conformance type=StubDecoder protocol=Decoder
(value req=codingPath witness=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9)
(value req=userInfo witness=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9)
(value req=container(keyedBy:) witness=StubKit.(file).StubDecoder.container(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10)
(value req=unkeyedContainer() witness=StubKit.(file).StubDecoder.unkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10)
(value req=singleValueContainer() witness=StubKit.(file).StubDecoder.singleValueContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10))
(declref_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:29:28 - line:29:28] decl=StubKit.(file).StubDecoder.stub(of:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 function_ref=unapplied))))))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 - line:1:8] "init(codingPath:provider:context:parentTypes:)" interface type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' access=internal designated
(parameter "self" interface type='StubDecoder' inout)
(parameter_list
(parameter "codingPath" apiName=codingPath interface type='[CodingKey]')
(parameter "provider" apiName=provider interface type='StubProvider')
(parameter "context" apiName=context interface type='StubDecoderContext')
(parameter "parentTypes" apiName=parentTypes interface type='[Any.Type]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 - line:1:8])))
(class_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:1 - line:41:1] "StubDecoderContext" interface type='StubDecoderContext.Type' access=internal non-resilient
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:5 - line:34:28]
(pattern_typed type='Int'
(pattern_named type='Int' 'maxSequenceLength')
(type_ident
(component id='Int' bind=Swift.(file).Int))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] "maxSequenceLength" type='Int' interface type='Int' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b120' interface type='(StubDecoderContext) -> () -> Int' access=internal get_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(return_stmt implicit
(load_expr implicit type='Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b308' interface type='(StubDecoderContext) -> (Int) -> ()' access=internal set_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubDecoderContext.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b538' interface type='(StubDecoderContext) -> () -> ()' access=internal _modify_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_impl
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied)))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b120' interface type='(StubDecoderContext) -> () -> Int' access=internal get_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(return_stmt implicit
(load_expr implicit type='Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b308' interface type='(StubDecoderContext) -> (Int) -> ()' access=internal set_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubDecoderContext.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9] 'anonname=0x7fa0d506b538' interface type='(StubDecoderContext) -> () -> ()' access=internal _modify_for=maxSequenceLength
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 - line:34:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_impl
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 function_ref=unapplied))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:5 - line:35:19]
(pattern_typed type='Int'
(pattern_named type='Int' 'maxDepth')
(type_ident
(component id='Int' bind=Swift.(file).Int))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] "maxDepth" type='Int' interface type='Int' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506b7c0' interface type='(StubDecoderContext) -> () -> Int' access=internal get_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(return_stmt implicit
(load_expr implicit type='Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506b9a8' interface type='(StubDecoderContext) -> (Int) -> ()' access=internal set_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubDecoderContext.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506baa8' interface type='(StubDecoderContext) -> () -> ()' access=internal _modify_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_impl
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied)))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506b7c0' interface type='(StubDecoderContext) -> () -> Int' access=internal get_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(return_stmt implicit
(load_expr implicit type='Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506b9a8' interface type='(StubDecoderContext) -> (Int) -> ()' access=internal set_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_storage
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubDecoderContext.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9] 'anonname=0x7fa0d506baa8' interface type='(StubDecoderContext) -> () -> ()' access=internal _modify_for=maxDepth
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 - line:35:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_impl
(declref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubDecoderContext.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 function_ref=unapplied))))))
(constructor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:5 - line:40:5] "init(maxSequenceLength:maxDepth:)" interface type='(StubDecoderContext.Type) -> (Int, Int) -> StubDecoderContext' access=internal designated
(parameter "self" interface type='StubDecoderContext')
(parameter_list
(parameter "maxSequenceLength" apiName=maxSequenceLength interface type='Int')
(parameter "maxDepth" apiName=maxDepth interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:9 - line:37:47])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:49 - line:40:5]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:9 - line:38:34]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:9 - line:38:14] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9 direct_to_storage
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:9 - line:38:9] decl=StubKit.(file).StubDecoderContext.init(maxSequenceLength:maxDepth:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:5 function_ref=unapplied))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:38:34 - line:38:34] decl=StubKit.(file).StubDecoderContext.init(maxSequenceLength:maxDepth:).maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:10 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:9 - line:39:25]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:9 - line:39:14] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9 direct_to_storage
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:9 - line:39:9] decl=StubKit.(file).StubDecoderContext.init(maxSequenceLength:maxDepth:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:5 function_ref=unapplied))
(declref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:39:25 - line:39:25] decl=StubKit.(file).StubDecoderContext.init(maxSequenceLength:maxDepth:).maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:37:34 function_ref=unapplied))
(return_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:40:5 - line:40:5])))
(destructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7 - line:33:7] "deinit" interface type='(StubDecoderContext) -> () -> ()' access=internal @objc
(parameter "self" interface type='StubDecoderContext')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7 - line:33:7])))
(enum_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:43:8 - line:52:1] "StubDecodingError" interface type='StubDecodingError.Type' access=public non-resilient inherits: Error, Equatable
(enum_case_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:5 - line:44:43]
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:10 - line:44:43] "notConformingToStubbable(_:)" interface type='(StubDecodingError.Type) -> (Any.Type) -> StubDecodingError' access=public))
(enum_element_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:10 - line:44:43] "notConformingToStubbable(_:)" interface type='(StubDecodingError.Type) -> (Any.Type) -> StubDecodingError' access=public)
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:46:12 - line:51:5] "==(_:_:)" interface type='(StubDecodingError.Type) -> (StubDecodingError, StubDecodingError) -> Bool' access=public type
(parameter "self" interface type='StubDecodingError.Type')
(parameter_list
(parameter "lhs" interface type='StubDecodingError')
(parameter "rhs" interface type='StubDecodingError') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:46:27 - line:46:74])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:46:84 - line:51:5]
(switch_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:9 - line:50:9]
(tuple_expr type='(StubDecodingError, StubDecodingError)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:16 - line:47:25]
(declref_expr type='StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:17 - line:47:17] decl=StubKit.(file).StubDecodingError.==(_:_:).lhs@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:46:28 function_ref=unapplied)
(declref_expr type='StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:47:22 - line:47:22] decl=StubKit.(file).StubDecodingError.==(_:_:).rhs@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:46:52 function_ref=unapplied))
(case_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:48:9 - line:49:29]
(case_label_item
(pattern_let type='(StubDecodingError, StubDecodingError)'
(pattern_tuple type='(StubDecodingError, StubDecodingError)' names='',''
(pattern_enum_element type='StubDecodingError' StubDecodingError.notConformingToStubbable
(pattern_paren type='(Any.Type)'
(pattern_named type='(Any.Type)' 'ltype')))
(pattern_enum_element type='StubDecodingError' StubDecodingError.notConformingToStubbable
(pattern_paren type='(Any.Type)'
(pattern_named type='(Any.Type)' 'rtype'))))))
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:13 - line:49:29]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:13 - line:49:29]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 - line:49:29] nothrow
(declref_expr type='(Any.Type?, Any.Type?) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:26 - line:49:26] decl=Swift.(file).== function_ref=unapplied)
(tuple_expr implicit type='(Any.Type?, Any.Type?)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 - line:49:29]
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 - line:49:20]
(declref_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:20 - line:49:20] decl=StubKit.(file).StubDecodingError.==(_:_:).ltype@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:48:45 function_ref=unapplied))
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:29 - line:49:29]
(declref_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:49:29 - line:49:29] decl=StubKit.(file).StubDecodingError.==(_:_:).rtype@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:48:79 function_ref=unapplied)))))))))))
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:54:1 - line:79:1] "StubSingleValueDecodingContainer" interface type='StubSingleValueDecodingContainer.Type' access=internal non-resilient inherits: SingleValueDecodingContainer
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:5 - line:55:31]
(pattern_typed type='[CodingKey]'
(pattern_named type='[CodingKey]' 'codingPath')
(type_array
(type_ident
(component id='CodingKey' bind=Swift.(file).CodingKey)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 - line:55:9] "codingPath" type='[CodingKey]' interface type='[CodingKey]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 - line:55:9] 'anonname=0x7fa0d5059448' interface type='(StubSingleValueDecodingContainer) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 - line:55:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubSingleValueDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 - line:55:9] 'anonname=0x7fa0d5059448' interface type='(StubSingleValueDecodingContainer) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 - line:55:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubSingleValueDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:5 - line:56:19]
(pattern_typed type='StubProvider'
(pattern_named type='StubProvider' 'provider')
(type_ident
(component id='StubProvider' bind=StubKit.(file).StubProvider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:2:17))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 - line:56:9] "provider" type='StubProvider' interface type='StubProvider' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 - line:56:9] 'anonname=0x7fa0d50595f8' interface type='(StubSingleValueDecodingContainer) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 - line:56:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubSingleValueDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 - line:56:9] 'anonname=0x7fa0d50595f8' interface type='(StubSingleValueDecodingContainer) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 - line:56:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubSingleValueDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:5 - line:57:18]
(pattern_typed type='StubDecoderContext'
(pattern_named type='StubDecoderContext' 'context')
(type_ident
(component id='StubDecoderContext' bind=StubKit.(file).StubDecoderContext@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 - line:57:9] "context" type='StubDecoderContext' interface type='StubDecoderContext' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 - line:57:9] 'anonname=0x7fa0d5059770' interface type='(StubSingleValueDecodingContainer) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 - line:57:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubSingleValueDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 - line:57:9] 'anonname=0x7fa0d5059770' interface type='(StubSingleValueDecodingContainer) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 - line:57:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubSingleValueDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:5 - line:60:31]
(pattern_typed type='[Any.Type]'
(pattern_named type='[Any.Type]' 'parentTypes')
(type_array
(type_metatype
(type_composite)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 - line:60:9] "parentTypes" type='[Any.Type]' interface type='[Any.Type]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 - line:60:9] 'anonname=0x7fa0d50598e8' interface type='(StubSingleValueDecodingContainer) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 - line:60:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubSingleValueDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 - line:60:9] 'anonname=0x7fa0d50598e8' interface type='(StubSingleValueDecodingContainer) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 - line:60:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubSingleValueDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 direct_to_storage
(declref_expr implicit type='StubSingleValueDecodingContainer' decl=StubKit.(file).StubSingleValueDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9 function_ref=unapplied)))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:5 - line:67:5] "decodeNil()" interface type='(StubSingleValueDecodingContainer) -> () -> Bool' access=internal
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:19 - line:62:20])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:30 - line:67:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:9 - line:65:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:42] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 - line:63:29] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 - line:63:29] decl=Swift.(file).Int extension.> function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:29 - line:63:29] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:42]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:20]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:20] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:12] decl=StubKit.(file).StubSingleValueDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:12 - line:63:12] decl=StubKit.(file).StubSingleValueDecodingContainer.decodeNil().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:10 function_ref=unapplied))))
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:31 - line:63:42] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:31 - line:63:31] decl=StubKit.(file).StubSingleValueDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:31 - line:63:31] decl=StubKit.(file).StubSingleValueDecodingContainer.decodeNil().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:62:10 function_ref=unapplied)))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:63:48 - line:65:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:13 - line:64:20]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:64:20 - line:64:20] value=false))))))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:9 - line:66:16]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:66:16 - line:66:16] value=true))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:5 - line:77:5] "decode(_:)" <T where T : Decodable> interface type='<T where T : Decodable> (StubSingleValueDecodingContainer) -> (T.Type) throws -> T' access=internal captures=(<generic> )
(parameter "self" interface type='StubSingleValueDecodingContainer')
(parameter_list
(parameter "type" interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:19 - line:69:34])
(result
(type_ident
(component id='T' bind=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).T@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:17)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:67 - line:77:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:9 - line:73:9]
(call_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 - line:71:70] nothrow arg_labels=where:
(dot_syntax_call_expr type='((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 - line:71:24] nothrow
(declref_expr type='([Any.Type]) -> ((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:24 - line:71:24] decl=Swift.(file).Sequence extension.contains(where:) [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [Any.Type]))] function_ref=single)
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 - line:71:12] decl=StubKit.(file).StubSingleValueDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:12 - line:71:12] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10 function_ref=unapplied)))
(tuple_expr type='(where: (Any.Type) throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:32 - line:71:70] names=where
(function_conversion_expr implicit type='(Any.Type) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 - line:71:69]
(closure_expr type='(Any.Type) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 - line:71:69] discriminator=0 captures=(<generic> ) single-expression
(parameter_list
(parameter "$0" type='Any.Type' interface type='Any.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 - line:71:40])
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 - line:71:67] nothrow
(declref_expr type='(Any.Type?, Any.Type?) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:45 - line:71:45] decl=Swift.(file).== function_ref=unapplied)
(tuple_expr implicit type='(Any.Type?, Any.Type?)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 - line:71:67]
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 - line:71:42]
(declref_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:42 - line:71:42] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).explicit closure discriminator=0.$0@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:40 function_ref=unapplied))
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:48 - line:71:67]
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:48 - line:71:67]
(coerce_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 - line:71:63] writtenType='Any.Type'
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 - line:71:51]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 - line:71:51]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:49 - line:71:49] typerepr='T'))))))))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:71:72 - line:73:9]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:13 - line:72:68]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:19 - line:72:68]
(normal_conformance type=StubDecodingError protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:19 - line:72:68] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:19 - line:72:37] nothrow
(declref_expr type='(StubDecodingError.Type) -> (Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:37 - line:72:37] decl=StubKit.(file).StubDecodingError.notConformingToStubbable@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:10 function_ref=single)
(type_expr type='StubDecodingError.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:19 - line:72:19] typerepr='StubDecodingError'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:61 - line:72:68]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 - line:72:64]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 - line:72:64]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:72:62 - line:72:62] typerepr='T')))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:9 - line:75:132]
(pattern_named type='StubDecoder' 'decoder')
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 - line:75:132] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 - line:75:23] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 - line:75:23] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:23 - line:75:23] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:34 - line:75:132] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:47 - line:75:47] decl=StubKit.(file).StubSingleValueDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:55:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:47 - line:75:47] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10 function_ref=unapplied))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:69 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:69 - line:75:69] decl=StubKit.(file).StubSingleValueDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:56:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:69 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:69 - line:75:69] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:88 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:88 - line:75:88] decl=StubKit.(file).StubSingleValueDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:57:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:88 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:88 - line:75:88] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10 function_ref=unapplied))
(binary_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 - line:75:131] nothrow
(dot_syntax_call_expr implicit type='(Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 - line:75:122] nothrow
(declref_expr type='(Array<Any.Type>.Type) -> (Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 - line:75:122] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=unapplied)
(type_expr implicit type='Array<Any.Type>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:122 - line:75:122] typerepr='Array<Any.Type>'))
(tuple_expr implicit type='([Any.Type], [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 - line:75:131]
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 - line:75:110] decl=StubKit.(file).StubSingleValueDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:60:9
(declref_expr implicit type='StubSingleValueDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:110 - line:75:110] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:10 function_ref=unapplied))
(array_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 - line:75:131]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:127]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:125] typerepr='T'))
(semantic_expr
(call_expr implicit type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 - line:75:127] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 - line:75:124] nothrow
(declref_expr implicit type='(Array<Any.Type>.Type) -> (Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 - line:75:124] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=single)
(type_expr implicit type='[Any.Type].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:124 - line:75:124] typerepr='[Any.Type]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Any.Type...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:127] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))]
(tuple_expr implicit type='(arrayLiteral: Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:127] names=arrayLiteral
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:127]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:127]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:125 - line:75:125] typerepr='T')))))))))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:13 - line:75:13] "decoder" type='StubDecoder' interface type='StubDecoder' access=private let readImpl=stored immutable)

(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:9 - line:76:42]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:16 - line:76:42]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:21 - line:76:42] throws arg_labels=of:
(dot_syntax_call_expr type='(T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:21 - line:76:29] nothrow
(declref_expr type='(StubDecoder) -> (T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:29 - line:76:29] decl=StubKit.(file).StubDecoder.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(declref_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:21 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:21 - line:76:21] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:75:13 function_ref=unapplied))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:33 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:33 - line:76:42] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:38 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:76:38 - line:76:38] decl=StubKit.(file).StubSingleValueDecodingContainer.decode(_:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:69:22 function_ref=unapplied)))))))
(constructor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:54:8 - line:54:8] "init(codingPath:provider:context:parentTypes:)" interface type='(StubSingleValueDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubSingleValueDecodingContainer' access=internal designated
(parameter "self" interface type='StubSingleValueDecodingContainer' inout)
(parameter_list
(parameter "codingPath" apiName=codingPath interface type='[CodingKey]')
(parameter "provider" apiName=provider interface type='StubProvider')
(parameter "context" apiName=context interface type='StubDecoderContext')
(parameter "parentTypes" apiName=parentTypes interface type='[Any.Type]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:54:8 - line:54:8])))
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:81:1 - line:136:1] "StubUnkeyedDecodingContainer" interface type='StubUnkeyedDecodingContainer.Type' access=internal non-resilient inherits: UnkeyedDecodingContainer
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:5 - line:82:31]
(pattern_typed type='[CodingKey]'
(pattern_named type='[CodingKey]' 'codingPath')
(type_array
(type_ident
(component id='CodingKey' bind=Swift.(file).CodingKey)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 - line:82:9] "codingPath" type='[CodingKey]' interface type='[CodingKey]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 - line:82:9] 'anonname=0x7fa0d5059f60' interface type='(StubUnkeyedDecodingContainer) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 - line:82:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 - line:82:9] 'anonname=0x7fa0d5059f60' interface type='(StubUnkeyedDecodingContainer) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 - line:82:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:5 - line:89:5]
(pattern_typed type='Int?'
(pattern_named type='Int?' 'count')
))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9 - line:83:9] "count" type='Int?' interface type='Int?' access=internal readImpl=getter immutable
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 - line:89:5] 'anonname=0x7fa0d320afa0' interface type='(StubUnkeyedDecodingContainer) -> () -> Int?' access=internal get_for=count
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 - line:89:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:9 - line:88:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:40] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:40]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:23] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied)))
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:40]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:40] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:49 - line:86:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:13 - line:85:20]
(inject_into_optional implicit type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20]
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] value=0))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:86:16 - line:88:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:13 - line:87:28]
(inject_into_optional implicit type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:20] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:20] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied)))))))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 - line:89:5] 'anonname=0x7fa0d320afa0' interface type='(StubUnkeyedDecodingContainer) -> () -> Int?' access=internal get_for=count
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 - line:89:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:9 - line:88:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:40] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:29 - line:84:29] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:40]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:23] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:12 - line:84:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied)))
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:40]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:40] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:32 - line:84:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:84:49 - line:86:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:13 - line:85:20]
(inject_into_optional implicit type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20]
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:85:20 - line:85:20] value=0))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:86:16 - line:88:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:13 - line:87:28]
(inject_into_optional implicit type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:28] decl=StubKit.(file).StubDecoderContext.maxSequenceLength@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:34:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:20] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:87:20 - line:87:20] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:21 function_ref=unapplied))))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:5 - line:90:59]
(pattern_typed type='Bool'
(pattern_named type='Bool' 'isAtEnd')
(type_ident
(component id='Bool' bind=Swift.(file).Bool))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:9 - line:90:9] "isAtEnd" type='Bool' interface type='Bool' access=internal readImpl=getter immutable
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 - line:90:59] 'anonname=0x7fa0d320b620' interface type='(StubUnkeyedDecodingContainer) -> () -> Bool' access=internal get_for=isAtEnd
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 - line:90:59]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:25 - line:90:57]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:57] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:57]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 function_ref=unapplied))
(binary_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:57] nothrow
(declref_expr type='(Int?, @autoclosure () throws -> Int) throws -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 - line:90:54] decl=Swift.(file).?? [with (substitution_map generic_signature=<T> (substitution T -> Int))] function_ref=unapplied)
(tuple_expr implicit type='(Int?, @autoclosure () throws -> Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:57]
(member_ref_expr type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:48] decl=StubKit.(file).StubUnkeyedDecodingContainer.count@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:48] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 function_ref=unapplied))
(autoclosure_expr implicit type='() throws -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] discriminator=0

(parameter_list)
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] value=0))))))))))))
(accessor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 - line:90:59] 'anonname=0x7fa0d320b620' interface type='(StubUnkeyedDecodingContainer) -> () -> Bool' access=internal get_for=isAtEnd
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 - line:90:59]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:25 - line:90:57]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:57] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:45 - line:90:45] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:57]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:32 - line:90:32] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 function_ref=unapplied))
(binary_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:57] nothrow
(declref_expr type='(Int?, @autoclosure () throws -> Int) throws -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:54 - line:90:54] decl=Swift.(file).?? [with (substitution_map generic_signature=<T> (substitution T -> Int))] function_ref=unapplied)
(tuple_expr implicit type='(Int?, @autoclosure () throws -> Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:57]
(member_ref_expr type='Int?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:48] decl=StubKit.(file).StubUnkeyedDecodingContainer.count@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9
(declref_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:48 - line:90:48] decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:23 function_ref=unapplied))
(autoclosure_expr implicit type='() throws -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] discriminator=0

(parameter_list)
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:57 - line:90:57] value=0)))))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:5 - line:91:29]
(pattern_typed type='Int'
(pattern_named type='Int' 'currentIndex')
(type_ident
(component id='Int' bind=Swift.(file).Int)))
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:29 - line:91:29] value=0))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] "currentIndex" type='Int' interface type='Int' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a238' interface type='(StubUnkeyedDecodingContainer) -> () -> Int' access=internal get_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(return_stmt implicit
(member_ref_expr implicit type='Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied)))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a420' interface type='(inout StubUnkeyedDecodingContainer) -> (Int) -> ()' access=internal set_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_storage
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a520' interface type='(inout StubUnkeyedDecodingContainer) -> () -> ()' access=internal _modify_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_impl
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied)))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a238' interface type='(StubUnkeyedDecodingContainer) -> () -> Int' access=internal get_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(return_stmt implicit
(member_ref_expr implicit type='Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied)))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a420' interface type='(inout StubUnkeyedDecodingContainer) -> (Int) -> ()' access=internal set_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list
(parameter "value" interface type='Int') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9])
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(assign_expr implicit type='()'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_storage
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied))
(declref_expr implicit type='Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.value@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9] 'anonname=0x7fa0d505a520' interface type='(inout StubUnkeyedDecodingContainer) -> () -> ()' access=internal _modify_for=currentIndex
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(yield_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 - line:91:9]
(inout_expr implicit type='inout Int'
(member_ref_expr implicit type='@lvalue Int' decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 direct_to_impl
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9 function_ref=unapplied))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:5 - line:92:19]
(pattern_typed type='StubProvider'
(pattern_named type='StubProvider' 'provider')
(type_ident
(component id='StubProvider' bind=StubKit.(file).StubProvider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:2:17))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 - line:92:9] "provider" type='StubProvider' interface type='StubProvider' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 - line:92:9] 'anonname=0x7fa0d507b508' interface type='(StubUnkeyedDecodingContainer) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 - line:92:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 - line:92:9] 'anonname=0x7fa0d507b508' interface type='(StubUnkeyedDecodingContainer) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 - line:92:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:5 - line:93:18]
(pattern_typed type='StubDecoderContext'
(pattern_named type='StubDecoderContext' 'context')
(type_ident
(component id='StubDecoderContext' bind=StubKit.(file).StubDecoderContext@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 - line:93:9] "context" type='StubDecoderContext' interface type='StubDecoderContext' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 - line:93:9] 'anonname=0x7fa0d507b6a8' interface type='(StubUnkeyedDecodingContainer) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 - line:93:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 - line:93:9] 'anonname=0x7fa0d507b6a8' interface type='(StubUnkeyedDecodingContainer) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 - line:93:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:5 - line:94:31]
(pattern_typed type='[Any.Type]'
(pattern_named type='[Any.Type]' 'parentTypes')
(type_array
(type_metatype
(type_composite)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 - line:94:9] "parentTypes" type='[Any.Type]' interface type='[Any.Type]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 - line:94:9] 'anonname=0x7fa0d507d460' interface type='(StubUnkeyedDecodingContainer) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 - line:94:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 - line:94:9] 'anonname=0x7fa0d507d460' interface type='(StubUnkeyedDecodingContainer) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubUnkeyedDecodingContainer')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 - line:94:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 direct_to_storage
(declref_expr implicit type='StubUnkeyedDecodingContainer' decl=StubKit.(file).StubUnkeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 function_ref=unapplied)))))
(constructor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 - line:101:5] "init(codingPath:provider:context:parentTypes:)" interface type='(StubUnkeyedDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' access=internal designated
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list
(parameter "codingPath" apiName=codingPath interface type='[CodingKey]')
(parameter "provider" apiName=provider interface type='StubProvider')
(parameter "context" apiName=context interface type='StubDecoderContext')
(parameter "parentTypes" apiName=parentTypes interface type='[Any.Type]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:9 - line:96:111])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:113 - line:101:5]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:9 - line:97:27]
(member_ref_expr type='@lvalue [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:9 - line:97:14] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9 direct_to_storage
(declref_expr type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:9 - line:97:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=unapplied))
(declref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:97:27 - line:97:27] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:10 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:9 - line:98:24]
(member_ref_expr type='@lvalue StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:9 - line:98:14] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9 direct_to_storage
(declref_expr type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:9 - line:98:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=unapplied))
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:98:24 - line:98:24] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:59 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:9 - line:99:28]
(member_ref_expr type='@lvalue [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:9 - line:99:14] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9 direct_to_storage
(declref_expr type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:9 - line:99:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=unapplied))
(declref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:99:28 - line:99:28] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:88 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:9 - line:100:25]
(member_ref_expr type='@lvalue StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:9 - line:100:14] decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9 direct_to_storage
(declref_expr type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:9 - line:100:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=unapplied))
(declref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:100:25 - line:100:25] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:35 function_ref=unapplied))
(return_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:101:5 - line:101:5])))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:14 - line:105:5] "decodeNil()" interface type='(inout StubUnkeyedDecodingContainer) -> () throws -> Bool' access=internal
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:28 - line:103:29])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:46 - line:105:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:9 - line:104:16]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:104:16 - line:104:16] value=false))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:14 - line:116:5] "decode(_:)" <T where T : Decodable> interface type='<T where T : Decodable> (inout StubUnkeyedDecodingContainer) -> (T.Type) throws -> T' access=internal captures=(<generic> )
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list
(parameter "type" interface type='T.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:28 - line:107:43])
(result
(type_ident
(component id='T' bind=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).T@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:26)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:76 - line:116:5]
(defer_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:9 - line:108:27]
(func_decl implicit "$defer()" interface type='<T where T : Decodable> () -> ()' access=private captures=(self<direct><noescape>)
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:15 - line:108:27]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 - line:108:25] nothrow arg_labels=
(dot_syntax_call_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 - line:108:17] nothrow
(declref_expr type='(inout StubUnkeyedDecodingContainer) -> () -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 - line:108:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.advance()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:27 function_ref=single)
(inout_expr implicit type='inout StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 - line:108:17]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:17 - line:108:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied)))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:24 - line:108:25]))))

(call_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:15 - line:108:15] nothrow arg_labels=
(declref_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:108:15 - line:108:15] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).$defer() [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] direct_to_storage function_ref=single)
(tuple_expr implicit type='()')))
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:9 - line:113:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:103] nothrow
(dot_syntax_call_expr implicit type='(Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 - line:111:72] nothrow
(declref_expr type='(Bool.Type) -> (Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 - line:111:72] decl=Swift.(file).Bool extension.&& function_ref=unapplied)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:72 - line:111:72] typerepr='Bool'))
(tuple_expr implicit type='(Bool, @autoclosure () throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:103]
(call_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:70] nothrow arg_labels=where:
(dot_syntax_call_expr type='((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:24] nothrow
(declref_expr type='([Any.Type]) -> ((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:24 - line:111:24] decl=Swift.(file).Sequence extension.contains(where:) [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [Any.Type]))] function_ref=double)
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:12]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:12 - line:111:12] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied))))
(tuple_expr type='(where: (Any.Type) throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:32 - line:111:70] names=where
(function_conversion_expr implicit type='(Any.Type) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 - line:111:69]
(closure_expr type='(Any.Type) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 - line:111:69] discriminator=0 captures=(<generic> ) single-expression
(parameter_list
(parameter "$0" type='Any.Type' interface type='Any.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 - line:111:40])
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 - line:111:67] nothrow
(declref_expr type='(Any.Type?, Any.Type?) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:45 - line:111:45] decl=Swift.(file).== function_ref=unapplied)
(tuple_expr implicit type='(Any.Type?, Any.Type?)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 - line:111:67]
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 - line:111:42]
(declref_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:42 - line:111:42] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).explicit closure discriminator=0.$0@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:40 function_ref=unapplied))
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:48 - line:111:67]
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:48 - line:111:67]
(coerce_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 - line:111:63] writtenType='Any.Type'
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 - line:111:51]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 - line:111:51]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:49 - line:111:49] typerepr='T'))))))))))))
(autoclosure_expr implicit type='() throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:103] discriminator=0 captures=(self<direct><noescape>)

(parameter_list)
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:103] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 - line:111:92] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 - line:111:92] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:92 - line:111:92] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:103]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:86 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:86] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:75] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:75]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:75 - line:111:75] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied))))
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 - line:111:103]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 - line:111:103] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 - line:111:95] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 - line:111:95]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:95 - line:111:95] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied))))))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:111:112 - line:113:9]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:13 - line:112:68]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:19 - line:112:68]
(normal_conformance type=StubDecodingError protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:19 - line:112:68] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:19 - line:112:37] nothrow
(declref_expr type='(StubDecodingError.Type) -> (Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:37 - line:112:37] decl=StubKit.(file).StubDecodingError.notConformingToStubbable@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:10 function_ref=single)
(type_expr type='StubDecodingError.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:19 - line:112:19] typerepr='StubDecodingError'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:61 - line:112:68]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 - line:112:64]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 - line:112:64]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:112:62 - line:112:62] typerepr='T')))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:9 - line:114:132]
(pattern_named type='StubDecoder' 'decoder')
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 - line:114:132] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 - line:114:23] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 - line:114:23] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:23 - line:114:23] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:34 - line:114:132] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 - line:114:47] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 - line:114:47]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:47 - line:114:47] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied)))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 - line:114:69] decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 - line:114:69]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:69 - line:114:69] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied)))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 - line:114:88] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 - line:114:88]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:88 - line:114:88] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied)))
(binary_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 - line:114:131] nothrow
(dot_syntax_call_expr implicit type='(Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 - line:114:122] nothrow
(declref_expr type='(Array<Any.Type>.Type) -> (Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 - line:114:122] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=unapplied)
(type_expr implicit type='Array<Any.Type>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:122 - line:114:122] typerepr='Array<Any.Type>'))
(tuple_expr implicit type='([Any.Type], [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 - line:114:131]
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 - line:114:110] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 - line:114:110]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:110 - line:114:110] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19 function_ref=unapplied)))
(array_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 - line:114:131]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:127]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:125] typerepr='T'))
(semantic_expr
(call_expr implicit type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 - line:114:127] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 - line:114:124] nothrow
(declref_expr implicit type='(Array<Any.Type>.Type) -> (Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 - line:114:124] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=single)
(type_expr implicit type='[Any.Type].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:124 - line:114:124] typerepr='[Any.Type]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Any.Type...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:127] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))]
(tuple_expr implicit type='(arrayLiteral: Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:127] names=arrayLiteral
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:127]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:127]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:125 - line:114:125] typerepr='T')))))))))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:13 - line:114:13] "decoder" type='StubDecoder' interface type='StubDecoder' access=private let readImpl=stored immutable)

(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:9 - line:115:41]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:16 - line:115:41]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:20 - line:115:41] throws arg_labels=of:
(dot_syntax_call_expr type='(T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:20 - line:115:28] nothrow
(declref_expr type='(StubDecoder) -> (T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:28 - line:115:28] decl=StubKit.(file).StubDecoder.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(declref_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:20 - line:115:20] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:114:13 function_ref=unapplied))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:32 - line:115:41] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:115:37 - line:115:37] decl=StubKit.(file).StubUnkeyedDecodingContainer.decode(_:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:31 function_ref=unapplied)))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:14 - line:121:5] "nestedContainer(keyedBy:)" <NestedKey where NestedKey : CodingKey> interface type='<NestedKey where NestedKey : CodingKey> (inout StubUnkeyedDecodingContainer) -> (NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey>' access=internal captures=(<generic> )
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list
(parameter "type" apiName=keyedBy interface type='NestedKey.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:45 - line:118:74])
(result
(type_ident
(component id='KeyedDecodingContainer' bind=Swift.(file).KeyedDecodingContainer)
(type_ident
(component id='NestedKey' bind=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).NestedKey@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:35))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:147 - line:121:5]
(defer_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:9 - line:119:27]
(func_decl implicit "$defer()" interface type='<NestedKey where NestedKey : CodingKey> () -> ()' access=private captures=(self<direct><noescape>)
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:15 - line:119:27]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 - line:119:25] nothrow arg_labels=
(dot_syntax_call_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 - line:119:17] nothrow
(declref_expr type='(inout StubUnkeyedDecodingContainer) -> () -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 - line:119:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.advance()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:27 function_ref=single)
(inout_expr implicit type='inout StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 - line:119:17]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:17 - line:119:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19 function_ref=unapplied)))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:24 - line:119:25]))))

(call_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:15 - line:119:15] nothrow arg_labels=
(declref_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:119:15 - line:119:15] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).$defer() [with (substitution_map generic_signature=<NestedKey where NestedKey : CodingKey> (substitution NestedKey -> NestedKey))] direct_to_storage function_ref=single)
(tuple_expr implicit type='()')))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:9 - line:120:164]
(call_expr type='KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 - line:120:164] nothrow arg_labels=_:
(constructor_ref_call_expr type='(StubKeyedDecodingContainer<NestedKey>) -> KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 - line:120:16] nothrow
(declref_expr implicit type='(KeyedDecodingContainer<NestedKey>.Type) -> (StubKeyedDecodingContainer<NestedKey>) -> KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 - line:120:16] decl=Swift.(file).KeyedDecodingContainer.init(_:) [with (substitution_map generic_signature=<K, Container where K == Container.Key, Container : KeyedDecodingContainerProtocol> (substitution K -> NestedKey) (substitution Container -> StubKeyedDecodingContainer<NestedKey>))] function_ref=single)
(type_expr type='KeyedDecodingContainer<NestedKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:16 - line:120:16] typerepr='KeyedDecodingContainer'))
(paren_expr type='(StubKeyedDecodingContainer<NestedKey>)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:38 - line:120:164]
(call_expr type='StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:39 - line:120:163] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:39 - line:120:75] nothrow
(declref_expr implicit type='(StubKeyedDecodingContainer<NestedKey>.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:75 - line:120:75] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> NestedKey))] function_ref=single)
(type_expr type='StubKeyedDecodingContainer<NestedKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:39 - line:120:75] typerepr='StubKeyedDecodingContainer<NestedKey>'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:76 - line:120:163] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 - line:120:89] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 - line:120:89]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:89 - line:120:89] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19 function_ref=unapplied)))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 - line:120:111] decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 - line:120:111]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:111 - line:120:111] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19 function_ref=unapplied)))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 - line:120:130] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 - line:120:130]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:130 - line:120:130] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19 function_ref=unapplied)))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 - line:120:152] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 - line:120:152]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:120:152 - line:120:152] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19 function_ref=unapplied))))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:14 - line:126:5] "nestedUnkeyedContainer()" interface type='(inout StubUnkeyedDecodingContainer) -> () throws -> UnkeyedDecodingContainer' access=internal
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:41 - line:123:42])
(result
(type_ident
(component id='UnkeyedDecodingContainer' bind=Swift.(file).UnkeyedDecodingContainer)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:79 - line:126:5]
(defer_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:9 - line:124:27]
(func_decl implicit "$defer()" interface type='() -> ()' access=private captures=(self<direct><noescape>)
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:15 - line:124:27]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 - line:124:25] nothrow arg_labels=
(dot_syntax_call_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 - line:124:17] nothrow
(declref_expr type='(inout StubUnkeyedDecodingContainer) -> () -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 - line:124:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.advance()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:27 function_ref=single)
(inout_expr implicit type='inout StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 - line:124:17]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:17 - line:124:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19 function_ref=unapplied)))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:24 - line:124:25]))))

(call_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:15 - line:124:15] nothrow arg_labels=
(declref_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:124:15 - line:124:15] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().$defer() direct_to_storage function_ref=single)
(tuple_expr implicit type='()')))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:9 - line:125:131]
(erasure_expr implicit type='UnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 - line:125:131]
(normal_conformance type=StubUnkeyedDecodingContainer protocol=UnkeyedDecodingContainer
(value req=codingPath witness=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9)
(value req=count witness=StubKit.(file).StubUnkeyedDecodingContainer.count@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9)
(value req=isAtEnd witness=StubKit.(file).StubUnkeyedDecodingContainer.isAtEnd@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:9)
(value req=currentIndex witness=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9)
(value req=decodeNil() witness=StubKit.(file).StubUnkeyedDecodingContainer.decodeNil()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=nestedContainer(keyedBy:) witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19)
(value req=nestedUnkeyedContainer() witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19)
(value req=superDecoder() witness=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19))
(call_expr type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 - line:125:131] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 - line:125:16] nothrow
(declref_expr implicit type='(StubUnkeyedDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 - line:125:16] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=single)
(type_expr type='StubUnkeyedDecodingContainer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:16 - line:125:16] typerepr='StubUnkeyedDecodingContainer'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:44 - line:125:131] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 - line:125:57] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 - line:125:57]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:57 - line:125:57] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19 function_ref=unapplied)))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 - line:125:79] decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 - line:125:79]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:79 - line:125:79] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19 function_ref=unapplied)))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 - line:125:98] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 - line:125:98]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:98 - line:125:98] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19 function_ref=unapplied)))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 - line:125:120] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 - line:125:120]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:125:120 - line:125:120] decl=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19 function_ref=unapplied)))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:14 - line:131:5] "superDecoder()" interface type='(inout StubUnkeyedDecodingContainer) -> () throws -> Decoder' access=internal
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:31 - line:128:32])
(result
(type_ident
(component id='Decoder' bind=Swift.(file).Decoder)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:52 - line:131:5]
(defer_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:9 - line:129:27]
(func_decl implicit "$defer()" interface type='() -> ()' access=private captures=(self<direct><noescape>)
(parameter_list)
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:15 - line:129:27]
(call_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 - line:129:25] nothrow arg_labels=
(dot_syntax_call_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 - line:129:17] nothrow
(declref_expr type='(inout StubUnkeyedDecodingContainer) -> () -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 - line:129:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.advance()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:27 function_ref=single)
(inout_expr implicit type='inout StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 - line:129:17]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:17 - line:129:17] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19 function_ref=unapplied)))
(tuple_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:24 - line:129:25]))))

(call_expr implicit type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:15 - line:129:15] nothrow arg_labels=
(declref_expr implicit type='() -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:15 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:129:15 - line:129:15] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().$defer() direct_to_storage function_ref=single)
(tuple_expr implicit type='()')))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:9 - line:130:114]
(erasure_expr implicit type='Decoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 - line:130:114]
(normal_conformance type=StubDecoder protocol=Decoder
(value req=codingPath witness=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9)
(value req=userInfo witness=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9)
(value req=container(keyedBy:) witness=StubKit.(file).StubDecoder.container(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10)
(value req=unkeyedContainer() witness=StubKit.(file).StubDecoder.unkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10)
(value req=singleValueContainer() witness=StubKit.(file).StubDecoder.singleValueContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10))
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 - line:130:114] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 - line:130:16] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 - line:130:16] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:16 - line:130:16] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:27 - line:130:114] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 - line:130:40] decl=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 - line:130:40]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:40 - line:130:40] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19 function_ref=unapplied)))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 - line:130:62] decl=StubKit.(file).StubUnkeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:92:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 - line:130:62]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:62 - line:130:62] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19 function_ref=unapplied)))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 - line:130:81] decl=StubKit.(file).StubUnkeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:93:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 - line:130:81]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:81 - line:130:81] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19 function_ref=unapplied)))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 - line:130:103] decl=StubKit.(file).StubUnkeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:94:9
(load_expr implicit type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 - line:130:103]
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:130:103 - line:130:103] decl=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19 function_ref=unapplied)))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:22 - line:135:5] "advance()" interface type='(inout StubUnkeyedDecodingContainer) -> () -> ()' access=private
(parameter "self" interface type='StubUnkeyedDecodingContainer' inout)
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:34 - line:133:35])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:37 - line:135:5]
(binary_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 - line:134:25] nothrow
(dot_syntax_call_expr implicit type='(inout Int, Int) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 - line:134:22] nothrow
(declref_expr type='(Int.Type) -> (inout Int, Int) -> ()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 - line:134:22] decl=Swift.(file).Int.+= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:22 - line:134:22] typerepr='Int'))
(tuple_expr implicit type='(inout Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 - line:134:25]
(inout_expr implicit type='inout Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 - line:134:9]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 - line:134:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9
(declref_expr implicit type='@lvalue StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:9 - line:134:9] decl=StubKit.(file).StubUnkeyedDecodingContainer.advance().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:133:27 function_ref=unapplied)))
(call_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] nothrow arg_labels=_builtinIntegerLiteral:
(constructor_ref_call_expr implicit type='(IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] nothrow
(declref_expr implicit type='(Int.Type) -> (IntLiteral) -> Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] decl=Swift.(file).Int.init(_builtinIntegerLiteral:) function_ref=single)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] typerepr='Int'))
(tuple_expr implicit type='(_builtinIntegerLiteral: Builtin.IntLiteral)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] names=_builtinIntegerLiteral
(integer_literal_expr type='Builtin.IntLiteral' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:134:25 - line:134:25] value=1))))))))
(struct_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:138:1 - line:189:1] "StubKeyedDecodingContainer" <Key : CodingKey> interface type='StubKeyedDecodingContainer<Key>.Type' access=internal non-resilient inherits: KeyedDecodingContainerProtocol
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:5 - line:139:31]
(pattern_typed type='[CodingKey]'
(pattern_named type='[CodingKey]' 'codingPath')
(type_array
(type_ident
(component id='CodingKey' bind=Swift.(file).CodingKey)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 - line:139:9] "codingPath" type='[CodingKey]' interface type='[CodingKey]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 - line:139:9] 'anonname=0x7fa0d5085d60' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 - line:139:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 - line:139:9] 'anonname=0x7fa0d5085d60' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [CodingKey]' access=internal get_for=codingPath
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 - line:139:9]
(return_stmt implicit
(member_ref_expr implicit type='[CodingKey]' decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:5 - line:140:27]
(pattern_typed type='[Key]'
(pattern_named type='[Key]' 'allKeys')
(type_array
(type_ident
(component id='Key' bind=StubKit.(file).StubKeyedDecodingContainer.Key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:138:35))))
(array_expr type='[Key]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 - line:140:27]
(semantic_expr
(call_expr implicit type='[Key]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 - line:140:26] nothrow arg_labels=
(constructor_ref_call_expr implicit type='(Key...) -> [Key]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 - line:140:26] nothrow
(declref_expr implicit type='(Array<Key>.Type) -> (Key...) -> [Key]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 - line:140:26] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Key))] function_ref=single)
(type_expr implicit type='[Key].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:26 - line:140:26] typerepr='[Key]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Key...)' tuple_to_tuple elements=[-2] variadic_sources=[] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Key))]
(tuple_expr implicit type='()'))))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 - line:140:9] "allKeys" type='[Key]' interface type='[Key]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 - line:140:9] 'anonname=0x7fa0d5086060' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [Key]' access=internal get_for=allKeys
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 - line:140:9]
(return_stmt implicit
(member_ref_expr implicit type='[Key]' decl=StubKit.(file).StubKeyedDecodingContainer.allKeys@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 - line:140:9] 'anonname=0x7fa0d5086060' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [Key]' access=internal get_for=allKeys
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 - line:140:9]
(return_stmt implicit
(member_ref_expr implicit type='[Key]' decl=StubKit.(file).StubKeyedDecodingContainer.allKeys@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:140:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:5 - line:141:19]
(pattern_typed type='StubProvider'
(pattern_named type='StubProvider' 'provider')
(type_ident
(component id='StubProvider' bind=StubKit.(file).StubProvider@/Users/yuutas4/projects/StubKit/Sources/StubKit/StubProvider.swift:2:17))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 - line:141:9] "provider" type='StubProvider' interface type='StubProvider' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 - line:141:9] 'anonname=0x7fa0d5096160' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 - line:141:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 - line:141:9] 'anonname=0x7fa0d5096160' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> StubProvider' access=internal get_for=provider
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 - line:141:9]
(return_stmt implicit
(member_ref_expr implicit type='StubProvider' decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:5 - line:142:18]
(pattern_typed type='StubDecoderContext'
(pattern_named type='StubDecoderContext' 'context')
(type_ident
(component id='StubDecoderContext' bind=StubKit.(file).StubDecoderContext@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:33:7))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 - line:142:9] "context" type='StubDecoderContext' interface type='StubDecoderContext' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 - line:142:9] 'anonname=0x7fa0d5096308' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 - line:142:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 - line:142:9] 'anonname=0x7fa0d5096308' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> StubDecoderContext' access=internal get_for=context
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 - line:142:9]
(return_stmt implicit
(member_ref_expr implicit type='StubDecoderContext' decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 function_ref=unapplied)))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:5 - line:143:31]
(pattern_typed type='[Any.Type]'
(pattern_named type='[Any.Type]' 'parentTypes')
(type_array
(type_metatype
(type_composite)))))
(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 - line:143:9] "parentTypes" type='[Any.Type]' interface type='[Any.Type]' access=internal let readImpl=stored immutable
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 - line:143:9] 'anonname=0x7fa0d5098ee0' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 - line:143:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 function_ref=unapplied))))))
(accessor_decl implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 - line:143:9] 'anonname=0x7fa0d5098ee0' interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () -> [Any.Type]' access=internal get_for=parentTypes
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list)
(brace_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 - line:143:9]
(return_stmt implicit
(member_ref_expr implicit type='[Any.Type]' decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' decl=StubKit.(file).StubKeyedDecodingContainer.<anonymous>.self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 function_ref=unapplied)))))
(constructor_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 - line:151:5] "init(codingPath:provider:context:parentTypes:)" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<Key>' access=internal designated
(parameter "self" interface type='StubKeyedDecodingContainer<Key>' inout)
(parameter_list
(parameter "codingPath" apiName=codingPath interface type='[CodingKey]')
(parameter "provider" apiName=provider interface type='StubProvider')
(parameter "context" apiName=context interface type='StubDecoderContext')
(parameter "parentTypes" apiName=parentTypes interface type='[Any.Type]') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:9 - line:146:111])
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:113 - line:151:5]
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:9 - line:147:27]
(member_ref_expr type='@lvalue [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:9 - line:147:14] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr type='@lvalue StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:9 - line:147:9] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 function_ref=unapplied))
(declref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:147:27 - line:147:27] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:10 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:22 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:9 - line:148:24]
(member_ref_expr type='@lvalue StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:9 - line:148:14] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr type='@lvalue StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:9 - line:148:9] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 function_ref=unapplied))
(declref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:148:24 - line:148:24] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:59 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:26 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:9 - line:149:28]
(member_ref_expr type='@lvalue [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:9 - line:149:14] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr type='@lvalue StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:9 - line:149:9] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 function_ref=unapplied))
(declref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:149:28 - line:149:28] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:88 function_ref=unapplied))
(assign_expr type='()' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:9 - line:150:25]
(member_ref_expr type='@lvalue StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:14 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:9 - line:150:14] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))] direct_to_storage
(declref_expr type='@lvalue StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:9 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:9 - line:150:9] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 function_ref=unapplied))
(declref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:25 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:150:25 - line:150:25] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:).provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:35 function_ref=unapplied))
(return_stmt implicit range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:151:5 - line:151:5])))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:153:5 - line:155:5] "contains(_:)" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> (Key) -> Bool' access=internal
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "key" interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:153:18 - line:153:29])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:153:39 - line:155:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:9 - line:154:16]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:154:16 - line:154:16] value=true))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:157:5 - line:162:5] "decodeNil(forKey:)" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> (Key) throws -> Bool' access=internal
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "key" apiName=forKey interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:157:19 - line:157:35])
(result
(type_ident
(component id='Bool' bind=Swift.(file).Bool)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:157:52 - line:162:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:9 - line:160:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:42] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 - line:158:29] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 - line:158:29] decl=Swift.(file).Int extension.> function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:29 - line:158:29] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:42]
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:20]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:20] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:12] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:12 - line:158:12] decl=StubKit.(file).StubKeyedDecodingContainer.decodeNil(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:157:10 function_ref=unapplied))))
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:31 - line:158:42] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:31 - line:158:31] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:31 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:31 - line:158:31] decl=StubKit.(file).StubKeyedDecodingContainer.decodeNil(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:157:10 function_ref=unapplied)))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:158:48 - line:160:9]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:13 - line:159:20]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:159:20 - line:159:20] value=false))))))
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:9 - line:161:16]
(call_expr implicit type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] nothrow arg_labels=_builtinBooleanLiteral:
(constructor_ref_call_expr implicit type='(Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] nothrow
(declref_expr implicit type='(Bool.Type) -> (Int1) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] decl=Swift.(file).Bool extension.init(_builtinBooleanLiteral:) function_ref=single)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] typerepr='Bool'))
(tuple_expr implicit type='(_builtinBooleanLiteral: Builtin.Int1)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] names=_builtinBooleanLiteral
(boolean_literal_expr type='Builtin.Int1' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:161:16 - line:161:16] value=true))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:5 - line:171:5] "decode(_:forKey:)" <T where T : Decodable> interface type='<Key, T where Key : CodingKey, T : Decodable> (StubKeyedDecodingContainer<Key>) -> (T.Type, Key) throws -> T' access=internal captures=(<generic> )
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "type" interface type='T.Type')
(parameter "key" apiName=forKey interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:19 - line:164:51])
(result
(type_ident
(component id='T' bind=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).T@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:17)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:84 - line:171:5]
(if_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:9 - line:168:9]
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:103] nothrow
(dot_syntax_call_expr implicit type='(Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 - line:166:72] nothrow
(declref_expr type='(Bool.Type) -> (Bool, @autoclosure () throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 - line:166:72] decl=Swift.(file).Bool extension.&& function_ref=unapplied)
(type_expr implicit type='Bool.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:72 - line:166:72] typerepr='Bool'))
(tuple_expr implicit type='(Bool, @autoclosure () throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:103]
(call_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:70] nothrow arg_labels=where:
(dot_syntax_call_expr type='((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:24] nothrow
(declref_expr type='([Any.Type]) -> ((Any.Type) throws -> Bool) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:24 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:24 - line:166:24] decl=Swift.(file).Sequence extension.contains(where:) [with (substitution_map generic_signature=<Self where Self : Sequence> (substitution Self -> [Any.Type]))] function_ref=double)
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:12] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:12 - line:166:12] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied)))
(tuple_expr type='(where: (Any.Type) throws -> Bool)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:32 - line:166:70] names=where
(function_conversion_expr implicit type='(Any.Type) throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 - line:166:69]
(closure_expr type='(Any.Type) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 - line:166:69] discriminator=0 captures=(<generic> ) single-expression
(parameter_list
(parameter "$0" type='Any.Type' interface type='Any.Type') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 - line:166:40])
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 - line:166:67] nothrow
(declref_expr type='(Any.Type?, Any.Type?) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:45 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:45 - line:166:45] decl=Swift.(file).== function_ref=unapplied)
(tuple_expr implicit type='(Any.Type?, Any.Type?)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 - line:166:67]
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 - line:166:42]
(declref_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:42 - line:166:42] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).explicit closure discriminator=0.$0@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:40 function_ref=unapplied))
(inject_into_optional implicit type='Any.Type?' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:48 - line:166:67]
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:48 - line:166:67]
(coerce_expr type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:56 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 - line:166:63] writtenType='Any.Type'
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 - line:166:51]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 - line:166:51]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:49 - line:166:49] typerepr='T'))))))))))))
(autoclosure_expr implicit type='() throws -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:103] discriminator=0 captures=(<generic> self<direct><noescape>)

(parameter_list)
(binary_expr type='Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:103] nothrow
(dot_syntax_call_expr implicit type='(Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 - line:166:92] nothrow
(declref_expr type='(Int.Type) -> (Int, Int) -> Bool' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 - line:166:92] decl=Swift.(file).Int extension.>= function_ref=unapplied)
(type_expr implicit type='Int.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:92 - line:166:92] typerepr='Int'))
(tuple_expr implicit type='(Int, Int)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:103]
(member_ref_expr type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:86 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:86] decl=Swift.(file).Array extension.count [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:75] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:75 - line:166:75] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied)))
(load_expr implicit type='Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 - line:166:103]
(member_ref_expr type='@lvalue Int' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 - line:166:103] decl=StubKit.(file).StubDecoderContext.maxDepth@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:35:9
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 - line:166:95] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:95 - line:166:95] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied)))))))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:166:112 - line:168:9]
(throw_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:13 - line:167:68]
(erasure_expr implicit type='Error' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:19 - line:167:68]
(normal_conformance type=StubDecodingError protocol=Error
(value req=_domain witness=Swift.(file).Error extension._domain)
(value req=_code witness=Swift.(file).Error extension._code)
(value req=_userInfo witness=Swift.(file).Error extension._userInfo)
(value req=_getEmbeddedNSError() witness=Swift.(file).Error extension._getEmbeddedNSError()))
(call_expr type='StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:19 - line:167:68] nothrow arg_labels=_:
(dot_syntax_call_expr type='(Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:19 - line:167:37] nothrow
(declref_expr type='(StubDecodingError.Type) -> (Any.Type) -> StubDecodingError' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:37 - line:167:37] decl=StubKit.(file).StubDecodingError.notConformingToStubbable@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:44:10 function_ref=single)
(type_expr type='StubDecodingError.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:19 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:19 - line:167:19] typerepr='StubDecodingError'))
(paren_expr type='(Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:61 - line:167:68]
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 - line:167:64]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 - line:167:64]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:167:62 - line:167:62] typerepr='T')))))))))
(pattern_binding_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:9 - line:169:140]
(pattern_named type='StubDecoder' 'decoder')
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 - line:169:140] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 - line:169:23] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 - line:169:23] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:23 - line:169:23] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:34 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:34 - line:169:140] names=codingPath,provider,context,parentTypes
(binary_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 - line:169:64] nothrow
(dot_syntax_call_expr implicit type='(Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 - line:169:58] nothrow
(declref_expr type='(Array<CodingKey>.Type) -> (Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 - line:169:58] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=unapplied)
(type_expr implicit type='Array<CodingKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:58 - line:169:58] typerepr='Array<CodingKey>'))
(tuple_expr implicit type='([CodingKey], [CodingKey])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 - line:169:64]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 - line:169:47] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:47 - line:169:47] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied))
(array_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 - line:169:64]
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 - line:169:61] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:43 function_ref=unapplied)
(semantic_expr
(call_expr implicit type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 - line:169:61] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 - line:169:60] nothrow
(declref_expr implicit type='(Array<CodingKey>.Type) -> (CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 - line:169:60] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=single)
(type_expr implicit type='[CodingKey].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:60 - line:169:60] typerepr='[CodingKey]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: CodingKey...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 - line:169:61] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(tuple_expr implicit type='(arrayLiteral: CodingKey)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 - line:169:61] names=arrayLiteral
(erasure_expr implicit type='CodingKey' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 - line:169:61]
(abstract_conformance protocol=CodingKey)
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:61 - line:169:61] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:43 function_ref=unapplied)))))))))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:77 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:77 - line:169:77] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:77 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:77 - line:169:77] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:96 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:96 - line:169:96] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:96 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:96 - line:169:96] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied))
(binary_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 - line:169:139] nothrow
(dot_syntax_call_expr implicit type='(Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 - line:169:130] nothrow
(declref_expr type='(Array<Any.Type>.Type) -> (Array<Any.Type>, Array<Any.Type>) -> Array<Any.Type>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 - line:169:130] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=unapplied)
(type_expr implicit type='Array<Any.Type>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:130 - line:169:130] typerepr='Array<Any.Type>'))
(tuple_expr implicit type='([Any.Type], [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 - line:169:139]
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 - line:169:118] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:118 - line:169:118] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:10 function_ref=unapplied))
(array_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 - line:169:139]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:135]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:133] typerepr='T'))
(semantic_expr
(call_expr implicit type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 - line:169:135] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 - line:169:132] nothrow
(declref_expr implicit type='(Array<Any.Type>.Type) -> (Any.Type...) -> [Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 - line:169:132] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))] function_ref=single)
(type_expr implicit type='[Any.Type].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:132 - line:169:132] typerepr='[Any.Type]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: Any.Type...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:135] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> Any.Type))]
(tuple_expr implicit type='(arrayLiteral: Any.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:135] names=arrayLiteral
(erasure_expr implicit type='Any.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:135]
(dot_self_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:135]
(type_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:133 - line:169:133] typerepr='T')))))))))))))

(var_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:13 - line:169:13] "decoder" type='StubDecoder' interface type='StubDecoder' access=private let readImpl=stored immutable)

(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:9 - line:170:41]
(try_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:16 - line:170:41]
(call_expr type='T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:20 - line:170:41] throws arg_labels=of:
(dot_syntax_call_expr type='(T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:20 - line:170:28] nothrow
(declref_expr type='(StubDecoder) -> (T.Type) throws -> T' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:28 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:28 - line:170:28] decl=StubKit.(file).StubDecoder.stub(of:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:27:10 [with (substitution_map generic_signature=<T where T : Decodable> (substitution T -> T))] function_ref=single)
(declref_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:20 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:20 - line:170:20] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).decoder@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:169:13 function_ref=unapplied))
(tuple_expr type='(of: T.Type)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:32 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:32 - line:170:41] names=of
(declref_expr type='T.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:37 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:170:37 - line:170:37] decl=StubKit.(file).StubKeyedDecodingContainer.decode(_:forKey:).type@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:164:22 function_ref=unapplied)))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:5 - line:175:5] "nestedContainer(keyedBy:forKey:)" <NestedKey where NestedKey : CodingKey> interface type='<Key, NestedKey where Key : CodingKey, NestedKey : CodingKey> (StubKeyedDecodingContainer<Key>) -> (NestedKey.Type, Key) throws -> KeyedDecodingContainer<NestedKey>' access=internal captures=(<generic> )
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "type" apiName=keyedBy interface type='NestedKey.Type')
(parameter "key" apiName=forKey interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:36 - line:173:82])
(result
(type_ident
(component id='KeyedDecodingContainer' bind=Swift.(file).KeyedDecodingContainer)
(type_ident
(component id='NestedKey' bind=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).NestedKey@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:26))))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:155 - line:175:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:9 - line:174:172]
(call_expr type='KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 - line:174:172] nothrow arg_labels=_:
(constructor_ref_call_expr type='(StubKeyedDecodingContainer<NestedKey>) -> KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 - line:174:16] nothrow
(declref_expr implicit type='(KeyedDecodingContainer<NestedKey>.Type) -> (StubKeyedDecodingContainer<NestedKey>) -> KeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 - line:174:16] decl=Swift.(file).KeyedDecodingContainer.init(_:) [with (substitution_map generic_signature=<K, Container where K == Container.Key, Container : KeyedDecodingContainerProtocol> (substitution K -> NestedKey) (substitution Container -> StubKeyedDecodingContainer<NestedKey>))] function_ref=single)
(type_expr type='KeyedDecodingContainer<NestedKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:16 - line:174:16] typerepr='KeyedDecodingContainer'))
(paren_expr type='(StubKeyedDecodingContainer<NestedKey>)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:38 - line:174:172]
(call_expr type='StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:39 - line:174:171] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:39 - line:174:75] nothrow
(declref_expr implicit type='(StubKeyedDecodingContainer<NestedKey>.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubKeyedDecodingContainer<NestedKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:75 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:75 - line:174:75] decl=StubKit.(file).StubKeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:146:5 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> NestedKey))] function_ref=single)
(type_expr type='StubKeyedDecodingContainer<NestedKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:39 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:39 - line:174:75] typerepr='StubKeyedDecodingContainer<NestedKey>'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:76 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:76 - line:174:171] names=codingPath,provider,context,parentTypes
(binary_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 - line:174:106] nothrow
(dot_syntax_call_expr implicit type='(Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 - line:174:100] nothrow
(declref_expr type='(Array<CodingKey>.Type) -> (Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 - line:174:100] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=unapplied)
(type_expr implicit type='Array<CodingKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:100 - line:174:100] typerepr='Array<CodingKey>'))
(tuple_expr implicit type='([CodingKey], [CodingKey])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 - line:174:106]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 - line:174:89] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:89 - line:174:89] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:10 function_ref=unapplied))
(array_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 - line:174:106]
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 - line:174:103] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:74 function_ref=unapplied)
(semantic_expr
(call_expr implicit type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 - line:174:103] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 - line:174:102] nothrow
(declref_expr implicit type='(Array<CodingKey>.Type) -> (CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 - line:174:102] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=single)
(type_expr implicit type='[CodingKey].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:102 - line:174:102] typerepr='[CodingKey]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: CodingKey...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 - line:174:103] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(tuple_expr implicit type='(arrayLiteral: CodingKey)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 - line:174:103] names=arrayLiteral
(erasure_expr implicit type='CodingKey' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 - line:174:103]
(abstract_conformance protocol=CodingKey)
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:103 - line:174:103] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:74 function_ref=unapplied)))))))))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:119 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:119 - line:174:119] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:119 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:119 - line:174:119] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:138 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:138 - line:174:138] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:138 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:138 - line:174:138] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:160 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:160 - line:174:160] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:160 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:174:160 - line:174:160] decl=StubKit.(file).StubKeyedDecodingContainer.nestedContainer(keyedBy:forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:173:10 function_ref=unapplied)))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:5 - line:179:5] "nestedUnkeyedContainer(forKey:)" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> (Key) throws -> UnkeyedDecodingContainer' access=internal
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "key" apiName=forKey interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:32 - line:177:48])
(result
(type_ident
(component id='UnkeyedDecodingContainer' bind=Swift.(file).UnkeyedDecodingContainer)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:85 - line:179:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:9 - line:178:139]
(erasure_expr implicit type='UnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 - line:178:139]
(normal_conformance type=StubUnkeyedDecodingContainer protocol=UnkeyedDecodingContainer
(value req=codingPath witness=StubKit.(file).StubUnkeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:82:9)
(value req=count witness=StubKit.(file).StubUnkeyedDecodingContainer.count@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:83:9)
(value req=isAtEnd witness=StubKit.(file).StubUnkeyedDecodingContainer.isAtEnd@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:90:9)
(value req=currentIndex witness=StubKit.(file).StubUnkeyedDecodingContainer.currentIndex@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:91:9)
(value req=decodeNil() witness=StubKit.(file).StubUnkeyedDecodingContainer.decodeNil()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:103:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decode(_:) witness=StubKit.(file).StubUnkeyedDecodingContainer.decode@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:107:19)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=decodeIfPresent(_:) witness=Swift.(file).UnkeyedDecodingContainer extension.decodeIfPresent)
(value req=nestedContainer(keyedBy:) witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedContainer(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:118:19)
(value req=nestedUnkeyedContainer() witness=StubKit.(file).StubUnkeyedDecodingContainer.nestedUnkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:123:19)
(value req=superDecoder() witness=StubKit.(file).StubUnkeyedDecodingContainer.superDecoder()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:128:19))
(call_expr type='StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 - line:178:139] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 - line:178:16] nothrow
(declref_expr implicit type='(StubUnkeyedDecodingContainer.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubUnkeyedDecodingContainer' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 - line:178:16] decl=StubKit.(file).StubUnkeyedDecodingContainer.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:96:5 function_ref=single)
(type_expr type='StubUnkeyedDecodingContainer.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:16 - line:178:16] typerepr='StubUnkeyedDecodingContainer'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:44 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:44 - line:178:139] names=codingPath,provider,context,parentTypes
(binary_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 - line:178:74] nothrow
(dot_syntax_call_expr implicit type='(Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 - line:178:68] nothrow
(declref_expr type='(Array<CodingKey>.Type) -> (Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 - line:178:68] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=unapplied)
(type_expr implicit type='Array<CodingKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:68 - line:178:68] typerepr='Array<CodingKey>'))
(tuple_expr implicit type='([CodingKey], [CodingKey])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 - line:178:74]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 - line:178:57] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:57 - line:178:57] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:10 function_ref=unapplied))
(array_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 - line:178:74]
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 - line:178:71] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:40 function_ref=unapplied)
(semantic_expr
(call_expr implicit type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 - line:178:71] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 - line:178:70] nothrow
(declref_expr implicit type='(Array<CodingKey>.Type) -> (CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 - line:178:70] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=single)
(type_expr implicit type='[CodingKey].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:70 - line:178:70] typerepr='[CodingKey]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: CodingKey...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 - line:178:71] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(tuple_expr implicit type='(arrayLiteral: CodingKey)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 - line:178:71] names=arrayLiteral
(erasure_expr implicit type='CodingKey' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 - line:178:71]
(abstract_conformance protocol=CodingKey)
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:71 - line:178:71] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:40 function_ref=unapplied)))))))))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:87 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:87 - line:178:87] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:87 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:87 - line:178:87] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:106 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:106 - line:178:106] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:106 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:106 - line:178:106] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:128 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:128 - line:178:128] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:128 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:178:128 - line:178:128] decl=StubKit.(file).StubKeyedDecodingContainer.nestedUnkeyedContainer(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:177:10 function_ref=unapplied))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:5 - line:183:5] "superDecoder()" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> () throws -> Decoder' access=internal
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:22 - line:181:23])
(result
(type_ident
(component id='Decoder' bind=Swift.(file).Decoder)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:43 - line:183:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:9 - line:182:114]
(erasure_expr implicit type='Decoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 - line:182:114]
(normal_conformance type=StubDecoder protocol=Decoder
(value req=codingPath witness=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9)
(value req=userInfo witness=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9)
(value req=container(keyedBy:) witness=StubKit.(file).StubDecoder.container(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10)
(value req=unkeyedContainer() witness=StubKit.(file).StubDecoder.unkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10)
(value req=singleValueContainer() witness=StubKit.(file).StubDecoder.singleValueContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10))
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 - line:182:114] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 - line:182:16] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 - line:182:16] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:16 - line:182:16] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:27 - line:182:114] names=codingPath,provider,context,parentTypes
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:40
range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:40 - line:182:40] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:40 - line:182:40] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:10 function_ref=unapplied))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:62 - line:182:62] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:62 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:62 - line:182:62] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:81 - line:182:81] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:81 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:81 - line:182:81] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:103 - line:182:103] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:103 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:182:103 - line:182:103] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder().self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:181:10 function_ref=unapplied))))))))
(func_decl range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:5 - line:187:5] "superDecoder(forKey:)" interface type='<Key where Key : CodingKey> (StubKeyedDecodingContainer<Key>) -> (Key) throws -> Decoder' access=internal
(parameter "self" interface type='StubKeyedDecodingContainer<Key>')
(parameter_list
(parameter "key" apiName=forKey interface type='Key') range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:22 - line:185:38])
(result
(type_ident
(component id='Decoder' bind=Swift.(file).Decoder)))
(brace_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:58 - line:187:5]
(return_stmt range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:9 - line:186:122]
(erasure_expr implicit type='Decoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 - line:186:122]
(normal_conformance type=StubDecoder protocol=Decoder
(value req=codingPath witness=StubKit.(file).StubDecoder.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:2:9)
(value req=userInfo witness=StubKit.(file).StubDecoder.userInfo@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:3:9)
(value req=container(keyedBy:) witness=StubKit.(file).StubDecoder.container(keyedBy:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:15:10)
(value req=unkeyedContainer() witness=StubKit.(file).StubDecoder.unkeyedContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:19:10)
(value req=singleValueContainer() witness=StubKit.(file).StubDecoder.singleValueContainer()@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:23:10))
(call_expr type='StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 - line:186:122] nothrow arg_labels=codingPath:provider:context:parentTypes:
(constructor_ref_call_expr type='([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 - line:186:16] nothrow
(declref_expr implicit type='(StubDecoder.Type) -> ([CodingKey], StubProvider, StubDecoderContext, [Any.Type]) -> StubDecoder' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 - line:186:16] decl=StubKit.(file).StubDecoder.init(codingPath:provider:context:parentTypes:)@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:1:8 function_ref=single)
(type_expr type='StubDecoder.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:16 - line:186:16] typerepr='StubDecoder'))
(tuple_expr type='(codingPath: [CodingKey], provider: StubProvider, context: StubDecoderContext, parentTypes: [Any.Type])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:27 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:27 - line:186:122] names=codingPath,provider,context,parentTypes
(binary_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 - line:186:57] nothrow
(dot_syntax_call_expr implicit type='(Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 - line:186:51] nothrow
(declref_expr type='(Array<CodingKey>.Type) -> (Array<CodingKey>, Array<CodingKey>) -> Array<CodingKey>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 - line:186:51] decl=Swift.(file).Array extension.+ [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=unapplied)
(type_expr implicit type='Array<CodingKey>.Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:51 - line:186:51] typerepr='Array<CodingKey>'))
(tuple_expr implicit type='([CodingKey], [CodingKey])' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 - line:186:57]
(member_ref_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 - line:186:40] decl=StubKit.(file).StubKeyedDecodingContainer.codingPath@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:139:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:40 - line:186:40] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:10 function_ref=unapplied))
(array_expr type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 - line:186:57]
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 - line:186:54] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:30 function_ref=unapplied)
(semantic_expr
(call_expr implicit type='[CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 - line:186:54] nothrow arg_labels=arrayLiteral:
(constructor_ref_call_expr implicit type='(CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 - line:186:53] nothrow
(declref_expr implicit type='(Array<CodingKey>.Type) -> (CodingKey...) -> [CodingKey]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 - line:186:53] decl=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))] function_ref=single)
(type_expr implicit type='[CodingKey].Type' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:53 - line:186:53] typerepr='[CodingKey]'))
(tuple_shuffle_expr implicit type='(arrayLiteral: CodingKey...)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 - line:186:54] tuple_to_tuple elements=[-2] variadic_sources=[0] default_args_owner=Swift.(file).Array extension.init(arrayLiteral:) [with (substitution_map generic_signature=<Element> (substitution Element -> CodingKey))]
(tuple_expr implicit type='(arrayLiteral: CodingKey)' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 - line:186:54] names=arrayLiteral
(erasure_expr implicit type='CodingKey' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 - line:186:54]
(abstract_conformance protocol=CodingKey)
(declref_expr type='Key' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:54 - line:186:54] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).key@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:30 function_ref=unapplied)))))))))
(member_ref_expr type='StubProvider' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:70 - line:186:70] decl=StubKit.(file).StubKeyedDecodingContainer.provider@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:141:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:70 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:70 - line:186:70] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:10 function_ref=unapplied))
(member_ref_expr type='StubDecoderContext' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:89 - line:186:89] decl=StubKit.(file).StubKeyedDecodingContainer.context@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:142:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:89 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:89 - line:186:89] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:10 function_ref=unapplied))
(member_ref_expr type='[Any.Type]' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:111 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:111 - line:186:111] decl=StubKit.(file).StubKeyedDecodingContainer.parentTypes@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:143:9 [with (substitution_map generic_signature=<Key where Key : CodingKey> (substitution Key -> Key))]
(declref_expr implicit type='StubKeyedDecodingContainer<Key>' location=/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:111 range=[/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:186:111 - line:186:111] decl=StubKit.(file).StubKeyedDecodingContainer.superDecoder(forKey:).self@/Users/yuutas4/projects/StubKit/Sources/StubKit/Decoders.swift:185:10 function_ref=unapplied))))))))
(typealias implicit "Key" interface type='StubKeyedDecodingContainer<Key>.Key.Type' access=internal type='Key')))

"""
