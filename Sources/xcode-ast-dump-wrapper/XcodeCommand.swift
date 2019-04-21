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
        guard let dumpPath = arguments.first(where: { $0.contains("-DTT_DUMP_PATH=") })?.split(separator: "=")[1] else {
            print("Please set TT_DUMP_PATH")
            exit(1)
        }
        arguments.removeFirst()

        let strippedArguments = SwiftcInvocator.stripXcodeArgumentsForASTDump(arguments)
        for (primarySource, arguments) in strippedArguments {
            let process = Process()
            process.launchPath = swiftcPath.path
            process.arguments = arguments
            print("Processing \(primarySource)")
            let outputPipe = Pipe()
            var outputData = Data()
            let outputSource = DispatchSource.makeReadSource(
                fileDescriptor: outputPipe.fileHandleForReading.fileDescriptor)
            outputSource.setEventHandler {
                outputData.append(outputPipe.fileHandleForReading.availableData)
            }
            outputSource.resume()
            process.standardOutput = outputPipe
            process.standardError = Pipe()
            process.launch()
            process.waitUntilExit()
            try! outputData.write(to: URL(fileURLWithPath: String(dumpPath)))
        }
    }

}
