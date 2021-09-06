// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "helloworld",
    dependencies: [
    ],
    targets: [
        .executableTarget(
            name: "helloworld",
            dependencies: []
	),
        .testTarget(
            name: "helloworldTests",
            dependencies: ["helloworld"]
	),
    ]
)
