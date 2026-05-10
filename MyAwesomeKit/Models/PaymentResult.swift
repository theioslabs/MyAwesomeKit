// PaymentResult.swift
// What you get back after a payment attempt.

import Foundation

public struct PaymentResult {
    public let success: Bool
    public let transactionID: String
    public let message: String
}
