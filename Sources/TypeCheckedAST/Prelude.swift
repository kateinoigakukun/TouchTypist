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

let join4: (String, String, String, String) -> String = { $0 + $1 + $2 + $3 }
let join3: (String, String, String) -> String = { $0 + $1 + $2 }
let join2: (String, String) -> String = { $0 + $1 }
