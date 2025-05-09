# AsgardCore

A modern iOS framework for building robust applications.

## Requirements

- iOS 13.0+
- Xcode 14.0+
- Swift 5.0+

## Installation

### CocoaPods

Add the following line to your Podfile:

```ruby
pod 'AsgardCore'
```

Then run:

```bash
pod install
```

### Manual Installation

1. Download the `AsgardCore.xcframework`
2. Drag the framework into your Xcode project
3. In Xcode:
   - Set "Embed & Sign" in the framework's target settings
   - Add the framework to "Frameworks, Libraries, and Embedded Content"

## Usage

Import the framework in your Swift files:

```swift
import AsgardCore
```

### Initialization

1. Initialize the framework with your configuration:

```swift
// Initialize AsgardManager with your API settings
AsgardManager.shared.initialize(
    apiKey: "your-api-key",
    endpoint: "https://your-endpoint.com",
    botProviderEndpoint: "https://your-endpoint.com"
)

// Set log level (optional)
AsgardManager.shared.setLogLevel(.full)
```

### Basic Chat Implementation

1. Create a ChatbotViewModel:

```swift
// Create API configuration
let apiConfig = ChatbotAPIConfig(
    customChannelId: nil,
    debugMode: true
)

// Initialize view model
let viewModel = ChatbotViewModel(config: apiConfig)
```

2. Set up message handling:

```swift
// Handle incoming messages
viewModel.onMessageReceived = { message in
    if let text = message.text {
        // Handle the received message
        print("Received: \(text)")
    }
}

// Handle errors
viewModel.onError = { error in
    print("Error: \(error.localizedDescription)")
}
```

3. Send messages:

```swift
// Send a message
viewModel.sendMessage("Your message here")
```

## License

AsgardCore is available under the MIT license. See the LICENSE file for more info.
