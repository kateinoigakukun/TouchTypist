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

if ProcessInfo.processInfo.arguments.count < 2 {
    help()
    exit(1)
}

func rewrite() {
    if ProcessInfo.processInfo.arguments.count < 2 {
        print("Usage: stir rewrite <AST file>")
        exit(1)
    }
    let url = URL(fileURLWithPath: ProcessInfo.processInfo.arguments[2])
    do {
        try SwiftTypeInjector().rewrite(astSource: url)
    } catch {
        dump(error)
        exit(1)
    }
}


func stripArguments(_ arguments: [String]) -> [String] {
    var stripped: [String] = []
    var index = arguments.startIndex
    var argument: String { return arguments[index] }
    while index != arguments.endIndex {
        switch argument {
        case "-incremental",
             "-enable-batch-mode",
             "-emit-dependencies",
             "-emit-module",
             "-emit-objc-header",
             "-parseable-output":
            index = arguments.index(after: index)
        case "-emit-module-path",
             "-emit-objc-header-path",
             "-output-file-map":
            index = arguments.index(after: index)
            index = arguments.index(after: index)
        case "-c":
            stripped.append("-dump-ast")
            index = arguments.index(after: index)
        default:
            stripped.append(argument)
            index = arguments.index(after: index)
        }
    }
    return stripped
}
func xcode() {
    guard let swiftcPath = SwiftcInvocator.locateSwiftc() else {
        print("couldn't find swiftc")
        exit(1)
    }
    var arguments = ProcessInfo.processInfo.arguments
    guard let dumpPath = arguments.first(where: { $0.contains("-DSTIR_DUMP_PATH=") })?.split(separator: "=")[1] else {
        print("STIR_DUMP_PATH not found")
        exit(1)
    }
    arguments.removeFirst()


    let strippedArguments = stripArguments(arguments)
    print(strippedArguments)

    let process = Process()
    process.launchPath = swiftcPath.path
    process.arguments = strippedArguments
    let stdoutPipe = Pipe()
    var stdoutData = Data()
    let stdoutSource = DispatchSource.makeReadSource(
        fileDescriptor: stdoutPipe.fileHandleForReading.fileDescriptor)
    stdoutSource.setEventHandler {
        stdoutData.append(stdoutPipe.fileHandleForReading.availableData)
    }
    stdoutSource.resume()
    process.standardOutput = stdoutPipe
    process.launch()
    process.waitUntilExit()
    try! stdoutData.write(to: URL(fileURLWithPath: String(dumpPath)))
}

switch ProcessInfo.processInfo.arguments[1] {
case "rewrite":
    rewrite()
case "xcode":
    xcode()
default:
    xcode()
}
