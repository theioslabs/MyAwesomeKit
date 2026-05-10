// swift-tools-version: 5.9
// Package.swift — MyAwesomeKit Swift Package Manager support

import PackageDescription

let package = Package(
    name: "MyAwesomeKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MyAwesomeKit",
            targets: ["MyAwesomeKit"]
        )
    ],
    targets: [
        .target(
            name: "MyAwesomeKit",
            path: "MyAwesomeKit",
            exclude: ["MyAwesomeKit.docc"],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        )
    ]
)
