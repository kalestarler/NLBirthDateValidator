# NLBirthDateValidator

[![CI Status](http://img.shields.io/travis/Kale/NLBirthDateValidator.svg?style=flat)](https://travis-ci.org/Kale/NLBirthDateValidator)
[![Version](https://img.shields.io/cocoapods/v/NLBirthDateValidator.svg?style=flat)](http://cocoapods.org/pods/NLBirthDateValidator)
[![License](https://img.shields.io/cocoapods/l/NLBirthDateValidator.svg?style=flat)](http://cocoapods.org/pods/NLBirthDateValidator)
[![Platform](https://img.shields.io/cocoapods/p/NLBirthDateValidator.svg?style=flat)](http://cocoapods.org/pods/NLBirthDateValidator)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

NLBirthDateValidator is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NLBirthDateValidator"
```

## Usage

To use, implement the following code.

```swift
let isValid: Bool = NLBirthDateValidator.checkBirthDate(13, month: 09, year: 1986, minimumAge: 16)
```

## Author

Kale, kale@niveumlabs.com

## License

NLBirthDateValidator is available under the MIT license. See the LICENSE file for more info.
