import SwiftTypeInjector
import TypeCheckedAST
import Foundation

func help() {
    print(
        """
        Usage: touchtypist subcommand
        SUBCOMMANDS:
            rewrite <AST file>  Rewrite source files
        """
    )
}


let arguments: [String] = ProcessInfo.processInfo.arguments
if arguments.count < 2 {
    help()
    exit(1)
}

switch arguments[1] {
case "rewrite":
    RewriteCommand().rewrite(arguments: arguments)
case "help":
    help()
default:
    help()
}
