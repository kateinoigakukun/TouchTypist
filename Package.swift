// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "TouchTypist",
    products: [
        .library(
            name: "SwiftTypeInjector",
            targets: ["SwiftTypeInjector"]),
        .executable(
            name: "touchtypist",
            targets: ["touchtypist"]),
        .executable(
            name: "touchtypist-xcode-wrapper",
            targets: ["touchtypist-xcode-wrapper"]),
        .executable(
            name: "xcode-ast-dump-wrapper",
            targets: ["xcode-ast-dump-wrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.50000.0")),
        .package(url: "https://github.com/thoughtbot/Curry.git", from: "4.0.2"),
    ],
    targets: [
        .target(
            name: "touchtypist",
            dependencies: ["SwiftTypeInjector"]),
        .target(
            name: "touchtypist-xcode-wrapper",
            dependencies: ["SwiftTypeInjector"]),
        .target(
            name: "xcode-ast-dump-wrapper",
            dependencies: ["SwiftTypeInjector"]),
        .target(
            name: "SwiftTypeInjector",
            dependencies: ["TypeCheckedAST", "SwiftSyntax"]),
        .target(
            name: "TypeCheckedAST",
            dependencies: ["Curry"]),
        .testTarget(
            name: "SwiftTypeInjectorTests",
            dependencies: ["SwiftTypeInjector"]),
        .testTarget(
            name: "TypeCheckedASTTests",
            dependencies: ["TypeCheckedAST"]),
    ]
)
