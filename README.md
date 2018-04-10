# RevHash

Compute a hash for file revving.

It will create an `md5` hash from an input `Data` or `String`, and truncate it to 10 characters, which is unique enough for this purpose.

If you think you need a different hash algorithm or a longer hash, [you're wrong](http://blog.risingstack.com/automatic-cache-busting-for-your-css/).

This is a Swift port of [the JavaScript library rev-hash](https://github.com/sindresorhus/rev-hash).

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/LinusU/RevHash.swift", from: "1.0.0"),
]
```

## Usage

```swift
import Foundation
import RevHash

revHash(of: "Lorem ipsum dolor sit amet")
//=> "fea80f2db0"

revHash(of: try! Data(contentsOf: URL(fileURLWithPath: "unicorn.png")))
//=> "bb9d8fe615"
```

## API

### `revHash(of: String) -> String`

Return rev-hash of the given `String`.

### `revHash(of: Data) -> String`

Return rev-hash of the given `Data`.
