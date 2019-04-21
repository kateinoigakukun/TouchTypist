import Foundation

public struct SwiftcInvocator {
    private static func getSearchPaths() -> [URL] {
        let cwd = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        let pathEnvVar = ProcessInfo.processInfo.environment["PATH"] ?? ""
        let paths = pathEnvVar.split(separator: ":").map(String.init).map {
            (path: String) -> URL in
            if path.hasPrefix("/") {
                return URL(fileURLWithPath: path)
            } else {
                return cwd.appendingPathComponent(path)
            }
        }
        return paths
    }

    private static func lookupExecutablePath(filename: String) -> URL? {
        let paths = getSearchPaths()
        for path in paths {
            let url = path.appendingPathComponent(filename)
            if FileManager.default.fileExists(atPath: url.path) {
                return url
            }
        }
        return nil
    }

    public static func locateSwiftc() -> URL? {
        return lookupExecutablePath(filename: "swiftc")
    }

    private static let _swiftcURL: URL? = SwiftcInvocator.locateSwiftc()
    private let swiftcURL: URL
    private let sourceFile: URL

    enum Error: Swift.Error {
        case couldNotFindSwiftc
        case couldNotParseOutputData
    }

    init(sourceFile: URL, swiftcURL: URL? = nil) throws {
        guard let swiftcURL = swiftcURL ?? SwiftcInvocator._swiftcURL else {
            throw Error.couldNotFindSwiftc
        }
        self.swiftcURL = swiftcURL
        self.sourceFile = sourceFile
    }

    func dumpAST() throws -> String {
        return try invoke(arguments: ["-frontend", "-dump-ast", sourceFile.path])
    }

    func invoke(arguments: [String]) throws -> String {

        let stdoutPipe = Pipe()
        var stdoutData = Data()
        let stdoutSource = DispatchSource.makeReadSource(
            fileDescriptor: stdoutPipe.fileHandleForReading.fileDescriptor)
        stdoutSource.setEventHandler {
            stdoutData.append(stdoutPipe.fileHandleForReading.availableData)
        }
        stdoutSource.resume()

        let process = Process()
        process.launchPath = swiftcURL.path
        process.arguments = arguments
        process.standardOutput = stdoutPipe
        process.launch()
        process.waitUntilExit()
        guard let result = String(data: stdoutData, encoding: .utf8) else {
            throw Error.couldNotParseOutputData
        }
        return result
    }

    public static func stripXcodeArgumentsForASTDump(_ arguments: [String]) -> [(String, [String])] {
        var (arguments, sources) = parseXcodeArguments(arguments)
        let firstSourceIndex = arguments.firstIndex(of: sources.first!)!
        arguments.insert("-primary-file", at: firstSourceIndex)
        return sources.map { primarySource in
            let index = arguments.firstIndex(of: primarySource)!
            var newArguments = arguments
            let tmp = arguments[index]
            newArguments[index] = newArguments[firstSourceIndex+1]
            newArguments[firstSourceIndex+1] = tmp
            return (primarySource, newArguments)
        }
    }
    public static func parseXcodeArguments(_ arguments: [String]) -> (arguments: [String], sources: [String]) {
        var stripped: [String] = []
        var index = arguments.startIndex
        var argument: String { return arguments[index] }
        var sources: [String] = []
        while index != arguments.endIndex {
            switch argument {
            case "-c",
                 "-incremental",
                 "-enable-batch-mode",
                 "-emit-dependencies",
                 "-emit-module",
                 "-emit-objc-header",
                 "-parseable-output",
                 "-serialize-diagnostics",
                 "-Xfrontend",
                 "-serialize-debugging-options":
                index = arguments.index(after: index)
            case "-emit-module-path",
                 "-emit-objc-header-path",
                 "-output-file-map",
                 "-index-store-path":
                index = arguments.index(after: index)
                index = arguments.index(after: index)
            default:
                if argument.hasPrefix("-j") {
                    index = arguments.index(after: index)
                    continue
                }
                if argument.hasPrefix("-") {
                    stripped.append(argument)
                    index = arguments.index(after: index)
                    if index != arguments.endIndex && !argument.hasPrefix("-") {
                        stripped.append(argument)
                        index = arguments.index(after: index)
                    }
                    continue
                }
                sources.append(argument)
                stripped.append(argument)
                index = arguments.index(after: index)
            }
        }
        let strippedArguments = ["-frontend", "-dump-ast", "-suppress-warnings"] + stripped
        return (arguments: strippedArguments, sources: sources)
    }
}
