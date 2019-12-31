# TimelineView


[![CI Status](https://img.shields.io/travis/devanshvyas/TimelineView.svg?style=flat)](https://travis-ci.org/devanshvyas/TimelineView)
[![Version](https://img.shields.io/cocoapods/v/TimelineView.svg?style=flat)](https://cocoapods.org/pods/TimelineView)
[![License](https://img.shields.io/cocoapods/l/TimelineView.svg?style=flat)](https://cocoapods.org/pods/TimelineView)
[![Platform](https://img.shields.io/cocoapods/p/TimelineView.svg?style=flat)](https://cocoapods.org/pods/TimelineView)

TimelineView is a simplest way to crop image to any shapes you like.

<img src="/TimelineView.png" height="500"/>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Cocoapods
TimelineView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TimelineView'
```

## Usage
### Adding TimelineView

Add UIView in your UIViewController and  give its custom class to TimelineView,
![alt TimelineView](https://github.com/devanshvyas/TimelineView/blob/master/AddingView.png)

give outlet to that view and then give Timeline data to that view as follows:

```swift
var darkGreen = UIColor.init(red: 2/255, green: 138/255, blue: 75/255, alpha: 1)
var lightBlack = UIColor(red:37/255, green:48/255, blue:64/255, alpha:1)
timline.timelineData = [
    Timeline(title: "Order Created", timeString: "Apr", desc: "Order details are subject to area which you have selected", actionPerformed: [], titleColor: lightBlack, actionItemColor: lightBlack),
    Timeline(title: "Tank Reading", timeString: "Mar", desc: "", actionPerformed: ["Order Delivered","Order Loaded"], titleColor: lightBlack, actionItemColor: lightBlack),
    Timeline(title: "Order Created", timeString: "Feb", desc: "", actionPerformed: ["Maintenance Req. Raised"], titleColor: darkGreen,actionItemColor: lightBlack),
    Timeline(title: "", timeString: "Jan", desc: "", actionPerformed: ["Tank Dips Missed","Credit Note Received","","","","","","Price Book Updated"], titleColor: lightBlack,actionItemColor: darkGreen)
]
```
## Author

[Devansh Vyas](http://github.com/devanshvyas)

## License

TimelineView is available under the MIT license. See the LICENSE file for more info.
