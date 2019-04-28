import Foundation
import SwiftTypeInjector
import TypeCheckedAST

class RewriteCommand {
    func rewrite(arguments: [String]) {
        if arguments.count < 2 {
            print("Usage: touchtypist rewrite <AST file>")
            exit(1)
        }
        let url: URL = URL(fileURLWithPath: arguments[2])
        do {
            try SwiftTypeInjector().rewrite(astSource: url)
        } catch {
            dump(error)
            exit(1)
        }
    }
}
