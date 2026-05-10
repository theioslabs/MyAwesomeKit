# ``MyAwesomeKit``

A lightweight Swift payment SDK for iOS.

## Overview

MyAwesomeKit makes it easy to accept payments in your iOS app. Configure it once at launch, then use ``PaymentManager`` to charge, refund, and query transactions.

```swift
// 1. Configure at app launch
MyAwesomeKitSDK.configure(apiKey: "sk_test_xxxx", environment: .sandbox)

// 2. Create a payment request
let request = PaymentRequest(amount: 1999, description: "Pro subscription")

// 3. Charge
let manager = PaymentManager()
let result = try await manager.charge(request)
print("Transaction ID:", result.transactionID)
```

## Topics

### Getting Started

- ``MyAwesomeKitSDK``
- ``Environment``

### Processing Payments

- ``PaymentManager``
- ``PaymentRequest``
- ``PaymentResult``
- ``PaymentStatus``

### Error Handling

- ``KitError``
