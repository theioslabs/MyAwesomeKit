// PaymentManager.swift
// Use this to process a payment.

import Foundation

public class PaymentManager {

    public init() {}

    /// Pass a PaymentRequest, get back a PaymentResult.
    public func charge(_ request: PaymentRequest, completion: (PaymentResult) -> Void) {

        // Simulate a successful payment (no real network call)
        let result = PaymentResult(
            success: true,
            transactionID: "TXN-\(Int.random(in: 1000...9999))",
            message: "Charged \(request.currency) \(request.amount) for '\(request.note)'"
        )

        completion(result)
    }
}
