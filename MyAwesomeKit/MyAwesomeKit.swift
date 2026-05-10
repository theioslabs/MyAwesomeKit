// MyAwesomeKit.swift
// Main entry point — configure the SDK here.

import Foundation

public final class MyAwesomeKit {

    // Shared instance (singleton)
    public static let shared = MyAwesomeKit()

    public var apiKey: String = ""

    private init() {}

    /// Call this once when your app starts.
    public static func configure(apiKey: String) {
        shared.apiKey = apiKey
        print("MyAwesomeKit configured with key: \(apiKey)")
    }
}
