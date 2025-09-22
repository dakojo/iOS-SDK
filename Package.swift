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
            targets: ["UserSDKTargets"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0"),
        .package(url: "https://github.com/kaishin/Gifu.git", exact: "3.3.1")
    ],
    targets: [
        .binaryTarget(
            name: "UserSDKBinary",
            url: "https://github.com/dakojo/iOS-SDK/releases/download/0.7.3/UserSDK.xcframework.zip",
            checksum: "29ed5e2af0d1267da37f539cf108f02005acb5659263994949e7552c6d643913"
        ),
        .target(
            name: "UserSDKTargets",
            dependencies: [
                .target(name: "UserSDKBinary"),
                .product(name: "FirebaseCode", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                .product(name: "Gifu", package: "Gifu")
            ],
            path: "Sources"
        )
    ]
)
