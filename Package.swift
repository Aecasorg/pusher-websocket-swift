// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PusherSwiftLegacy",
    products: [
        .library(name: "PusherSwiftLegacy", targets: ["PusherSwiftLegacy"])
    ],
    dependencies: [
        .package(url: "https://github.com/ashleymills/Reachability.swift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMajor(from: "3.1.0")),
    ],
    targets: [
        .target(
            name: "PusherSwiftLegacy",
            dependencies: [
                "Reachability",
                "Starscream",
            ],
            path: "Sources",
            exclude: ["PusherSwiftWithEncryption-Only"]
        ),
        .testTarget(
            name: "PusherSwiftLegacyTests",
            dependencies: ["PusherSwift"],
            path: "Tests",
            exclude: ["PusherSwiftWithEncryption-Only"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
