// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftXMLComplete",
    platforms: [
        .macOS(.v15),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftXMLComplete",
            targets: ["SwiftXMLComplete"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftxml/Pipeline.git", from: "1.0.8"),
        .package(url: "https://github.com/swiftxml/PipelineBasicLogging.git", from: "1.0.7"),
        .package(url: "https://github.com/swiftxml/SwiftXML.git", from: "2.0.9"),
        .package(url: "https://github.com/swiftxml/PipelineExtensionsForSwiftXML.git", from: "2.0.5"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftXMLComplete",
            dependencies: [
                "Pipeline",
                "PipelineBasicLogging",
                "SwiftXML",
                "PipelineExtensionsForSwiftXML",
            ]
        ),
        .testTarget(
            name: "SwiftXMLCompleteTests",
            dependencies: ["SwiftXMLComplete"]
        ),
    ]
)
