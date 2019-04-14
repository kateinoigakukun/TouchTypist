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
        guard let dumpPath = arguments.first(where: { $0.contains("-DSTIR_DUMP_PATH=") })?.split(separator: "=")[1] else {
            print("STIR_DUMP_PATH not found")
            exit(1)
        }
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
        try! outputData.write(to: URL(fileURLWithPath: String(dumpPath)))
    }

}
