// PaymentRequest.swift
// Holds the details of what you want to charge.

import Foundation

public struct PaymentRequest {
    public let amount: Double       // e.g. 9.99
    public let currency: String     // e.g. "USD"
    public let note: String         // e.g. "Coffee purchase"

    public init(amount: Double, currency: String = "USD", note: String) {
        self.amount = amount
        self.currency = currency
        self.note = note
    }
}
