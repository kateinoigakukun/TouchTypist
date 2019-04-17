import Foundation
import SwiftTypeInjector
import TypeCheckedAST

class XcodeCommand {
    func xcode(arguments: [String]) {
        guard let swiftcPath = SwiftcInvocator.locateSwiftc() else {
            print("couldn't find swiftc")
            exit(1)
        }
        var arguments = arguments
        arguments.removeFirst()

        let strippedArguments = SwiftcInvocator.stripXcodeArgumentsForASTDump(arguments)

        let process = Process()
        process.launchPath = swiftcPath.path
        process.arguments = strippedArguments
        let outputPipe = Pipe()
        var outputData = Data()
        let outputSource = DispatchSource.makeReadSource(
            fileDescriptor: outputPipe.fileHandleForReading.fileDescriptor)
        outputSource.setEventHandler {
            outputData.append(outputPipe.fileHandleForReading.availableData)
        }
        outputSource.resume()
        process.standardOutput = outputPipe
        process.standardError = outputPipe
        process.launch()
        process.waitUntilExit()

        guard let astContent = String(data: outputData, encoding: .utf8) else {
            print("couldn't read AST from swiftc output")
            exit(1)
        }
        try! SwiftTypeInjector().rewrite(content: astContent)
    }

}
