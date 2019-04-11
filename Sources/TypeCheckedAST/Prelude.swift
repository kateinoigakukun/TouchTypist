//
//  Prelude.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/05.
//

@inline(__always)
func id<A>(a: A) -> A { return a }

@inline(__always)
func const<A, B>(_ a: A) -> (B) -> A {
    return { _ in return a }
}

@inline(__always)
func void<A>(_: A) -> Void {}

@inline(__always)
func cons<E>(x: E) -> ([E]) -> [E] {
    return { xs in
        var xs = xs
        xs.insert(x, at: xs.startIndex)
        return xs
    }
}
