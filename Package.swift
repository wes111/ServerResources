// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ServerResources",
    platforms: [
        .iOS(.v16)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ServerResources",
            targets: ["ServerResources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appwrite/sdk-for-swift", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/wes111/SharedResourcesClientAndServer", .upToNextMajor(from: "1.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ServerResources",
            dependencies: [
                .product(name: "Appwrite", package: "sdk-for-swift"),
                .product(name: "SharedResourcesClientAndServer", package: "SharedResourcesClientAndServer")
            ]
        ),
        .testTarget(
            name: "ServerResourcesTests",
            dependencies: ["ServerResources"]),
    ]
)
