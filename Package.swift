// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OTP",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .executable(
            name: "otp",
            targets: ["OTP"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lachlanbell/SwiftOTP.git", .upToNextMinor(from: "2.0.0")),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "OTP",
            dependencies: [
                "SwiftOTP",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ])
    ]
)
