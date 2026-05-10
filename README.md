# MyAwesomeKit

A lightweight, async/await-ready payment SDK for iOS, written in Swift.

## Requirements

| Platform | Minimum version |
|----------|----------------|
| iOS      | 16.0           |
| Swift    | 5.9+           |

---

## Installation

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'MyAwesomeKit', '~> 1.0'
```

Then run:

```bash
pod install
```

### Swift Package Manager

In Xcode: **File → Add Package Dependencies** and enter:

```
https://github.com/bhavin/MyAwesomeKit.git
```

Or add to your `Package.swift`:

```swift
.package(url: "https://github.com/bhavin/MyAwesomeKit.git", from: "1.0.0")
```

---

## Quick Start

### 1. Configure

Call this once in `AppDelegate` or your app's entry point:

```swift
import MyAwesomeKit

MyAwesomeKitSDK.configure(apiKey: "sk_test_xxxx", environment: .sandbox)
```

### 2. Charge

```swift
let manager = PaymentManager()

let request = PaymentRequest(
    amount: 1999,          // $19.99 in cents
    currency: "USD",
    description: "Pro subscription"
)

do {
    let result = try await manager.charge(request)
    print("Success! Transaction ID:", result.transactionID)
} catch let error as KitError {
    print("Payment failed:", error.localizedDescription)
}
```

### 3. Refund

```swift
let result = try await manager.refund(transactionID: "txn_abc123")
```

### 4. Check status

```swift
let result = try await manager.status(of: "txn_abc123")
print("Status:", result.status)
```

---

## Environments

| Environment | Description |
|-------------|-------------|
| `.sandbox`  | Safe for testing — no real charges |
| `.production` | Live transactions |

---

## Error Handling

All errors are typed as `KitError`:

```swift
catch let error as KitError {
    switch error {
    case .notConfigured:      // forgot to call configure()
    case .invalidAPIKey:      // key revoked or wrong
    case .invalidRequest(let reason): // bad parameters
    case .networkError(let underlying): // connectivity issue
    case .serverError(let code, let message): // API error
    case .cancelled:          // task was cancelled
    }
}
```

---

## License

MIT © 2026 Bhavin Chauhan
