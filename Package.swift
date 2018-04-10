// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RevHash",
    products: [
        .library(name: "RevHash", targets: ["RevHash"]),
    ],
    targets: [
        .target(name: "RevHash", dependencies: [], publicHeadersPath: "."),
        .testTarget(name: "RevHashTests", dependencies: ["RevHash"]),
    ]
)
