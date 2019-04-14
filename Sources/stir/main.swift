import SwiftTypeInjector
import Foundation

if ProcessInfo.processInfo.arguments.count < 2 {
    print("Usage: stir <ast-file>")
    exit(1)
}
let url = URL(fileURLWithPath: ProcessInfo.processInfo.arguments[1])
do {
    try SwiftTypeInjector().rewrite(astSource: url)
} catch {
    print(String(describing: error))
    exit(1)
}


