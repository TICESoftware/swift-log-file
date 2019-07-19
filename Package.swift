// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-log-file",
    products: [
        .library(
            name: "FileLogging",
            targets: ["FileLogging"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
        .package(url: "https://github.com/Ponyboy47/Trailblazer.git", from: "0.16.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FileLogging",
            dependencies: ["Logging", "TrailBlazer"]),
        .testTarget(
            name: "FileLoggingTests",
            dependencies: ["FileLogging", "Logging", "TrailBlazer"])
    ]
)
