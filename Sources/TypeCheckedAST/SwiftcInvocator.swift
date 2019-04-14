import Foundation

struct SwiftcInvocator {
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

    private static func locateSwiftc() -> URL? {
        return lookupExecutablePath(filename: "swiftc")
    }

    private static let _swiftcURL: URL? = SwiftcInvocator.locateSwiftc()


    // FIXME
    func invoke(arguments: [String]) -> String {

        let stdoutPipe = Pipe()
        var stdoutData = Data()
        let stdoutSource = DispatchSource.makeReadSource(
            fileDescriptor: stdoutPipe.fileHandleForReading.fileDescriptor)
        stdoutSource.setEventHandler {
            stdoutData.append(stdoutPipe.fileHandleForReading.availableData)
        }
        stdoutSource.resume()

        let process = Process()
        process.launchPath = SwiftcInvocator._swiftcURL!.absoluteString
        process.arguments = arguments
        process.standardOutput = stdoutPipe
        process.launch()
        process.waitUntilExit()
        return String(data: stdoutData, encoding: .utf8)!
    }
}
