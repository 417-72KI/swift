// swift-tools-version:4.0

import PackageDescription

// Version number can be found in Source/Danger/Danger.swift

let package = Package(
    name: "danger-swift",
    products: [
        .library(name: "Danger", type: .dynamic, targets: ["Danger"]),
        .executable(name: "danger-swift", targets: ["Runner"])
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Marathon.git", from: "3.1.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.1.0"),
        .package(url: "https://github.com/nerdishbynature/octokit.swift", from: "0.9.0"),
        // Dev dependencies
        .package(url: "https://github.com/eneko/SourceDocs.git", from: "0.5.1"),
    ],
    targets: [
        .target(name: "Logger", dependencies: []),
        .target(name: "Danger", dependencies: ["ShellOut", "OctoKit", "Logger"]),
        .target(name: "RunnerLib", dependencies: ["Logger", "ShellOut"]),
        .target(name: "Runner", dependencies: ["RunnerLib", "MarathonCore", "Logger"]),
        .testTarget(name: "DangerTests", dependencies: ["Danger"]),
        .testTarget(name: "RunnerLibTests", dependencies: ["RunnerLib"]),
    ],
    swiftLanguageVersions: [4]
)
