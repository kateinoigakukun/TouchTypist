//
//  ASTToken.swift
//  TypeCheckedAST
//
//  Created by Yuta Saito on 2019/04/21.
//

enum ASTToken {
    case symbol(String)
    case range(String)
    case singleQuoted(String)
    case doubleQuoted(String)
    case unspaceableSymbol(String)
}
