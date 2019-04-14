import SwiftTypeInjector
import TypeCheckedAST
import Foundation

func help() {
    print(
        """
        Usage: stir subcommand
        SUBCOMMANDS:
            xcode               Dump AST file from Xcode command
            rewrite <AST file>  Rewrite source files
        """
    )
}


let arguments = ProcessInfo.processInfo.arguments
if arguments.count < 2 {
    help()
    exit(1)
}

switch arguments[1] {
case "rewrite":
    RewriteCommand().rewrite(arguments: arguments)
case "xcode":
    XcodeCommand().xcode(arguments: arguments)
case "help":
    help()
default:
    help()
}
