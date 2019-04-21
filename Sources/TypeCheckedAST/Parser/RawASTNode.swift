//
//  RawASTNode.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

import Foundation

class RawASTNode {
    var children: [RawASTNode] = []
    var tokens: [ASTToken] = []
    weak var parent: RawASTNode?
}


extension RawASTNode: CustomReflectable {
    var customMirror: Mirror {
        return Mirror.init(
            self,
            children: Array<Mirror.Child>(
                arrayLiteral:
                (label: "tokens", value: tokens),
                (label: "children", value: children)
            )
        )
    }
}
