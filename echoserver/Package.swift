// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "echoserver",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git",  .upToNextMajor(from: "2.36.0")),
        .package(url: "https://github.com/adam-fowler/mqtt-nio", .upToNextMajor(from: "2.5.2")),
    ],
    targets: [
        .target(
            name: "echoserver",
            dependencies: [
                .product(name: "MQTTNIO", package: "mqtt-nio"),
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "NIOConcurrencyHelpers", package: "swift-nio")
            ]
        ),
        .testTarget(
            name: "echoserverTests",
            dependencies: ["echoserver"]),
    ]
)
