// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "UserSDK",
            targets: ["UserSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0"),
        .package(url: "https://github.com/kaishin/Gifu.git", exact: "3.3.1")
    ],
    targets: [
        .binaryTarget(
            name: "UserSDK",
            url: "https://github.com/dakojo/iOS-SDK/releases/download/0.7.3/UserSDK.xcframework.zip",
            chceksum: "29ed5e2af0d1267da37f539cf108f02005acb5659263994949e7552c6d643913"
        )
    ]
)
