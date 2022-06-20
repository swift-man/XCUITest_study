# XCUITest_study


# Introduction to iOS Automation with XCUITest
[Introduction to iOS Test Automation with XCUITest](https://testautomationu.applitools.com/introduction-to-ios-test-automation-with-xcuitest/)  
[All Source Code XCUITest-TAU](https://github.com/Shashikant86/XCUITest-TAU)  

## Chapter 1. Introduction to XCUITest
### What's XCUITest
* Xcdoe UI Testing framework by Apple
* XCUITest used to test native apps(Swift, Objective-C)
* XCUITest can not be used to test cross platform apps

### What's Swift
* Swift is programming languages launched by Apple in 2014
* Swift is modern, fast, type safe and easy to learn
* Swift is used to write XCUITest for Apple platform apps.

### Why XCUITest?
* Native and Fast
* Same Teck Stack used for app development
* Collaboration with app developers
* Easy to integrate with CI/CD
* Improved Accessibility

### XCUITest-Downside
* No Cross-platform
* Only used with Swift and Objective-C

### XCTest
* Unit Testing
* Integration and Network Testing
* Performance Testing

### XCTest VS XCUITest
* XCTest - White Box - Access Data And API of App
* XCUITest - Black Box - Can not Access data of API
* XCUITest communicate with main app using Launch Arguments or Launch Environments

### Resource
* [WWDC TestingVideos](https://developer.apple.com/videos/all-videos/?q=testing)  
* [Apple Developer - User Interface Tests](https://developer.apple.com/documentation/xctest/user_interface_tests)  
* [Apple Documentation: Testing with Xcode - User Interface Testing](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/09-ui_testing.html)  

## Chapter 2. First XCUITest
### func testThankYouMessage()

* po XCUIApplication().debugDescription
```
    t =   109.84s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   110.23s Requesting snapshot of accessibility hierarchy for app with pid 8736
"Attributes: Application, 0x147504a20, pid: 8736, label: \'XCUITest_study\'\nElement subtree:\n →Application, 0x147504a20, pid: 8736, label: \'XCUITest_study\'\n    Window (Main), 0x147504d30, {{0.0, 0.0}, {414.0, 896.0}}\n      Other, 0x147504e40, {{0.0, 0.0}, {414.0, 896.0}}\n        Other, 0x1475052a0, {{0.0, 0.0}, {414.0, 896.0}}\n          Other, 0x147504f50, {{0.0, 0.0}, {414.0, 896.0}}\n            StaticText, 0x147505060, {{68.0, 224.5}, {285.5, 26.5}}, identifier: \'welcomeMessage\', label: \'Welcome to XCUITest Course \'\n            StaticText, 0x147505170, {{109.0, 325.0}, {171.5, 31.5}}, identifier: \'enterCity\', label: \'Enter Your City \'\n            TextField, 0x1475053b0, {{189.0, 422.5}, {36.0, 51.5}}, identifier: \'city\'\n            Button, 0x14980ba20, {{25.0, 542.0}, {369.0, 41.0}}, identifier: \'enrollButton\', label: \'Enroll\'\n              StaticText, 0x147704b50, {{180.5, 548.0}, {58.0, 29.0}}, label: \'Enroll\'\n            Image, 0x147704ed0, {{164.0, 710.0}, {90.0, 90.0}}, identifier: \'TAUlogo\'\nPath to element:\n →Application, 0x147504a20, pid: 8736, label: \'XCUITest_study\'\nQuery chain:\n →Find: Target Application \'com.swiftman.XCUITest-study\'\n  Output: {\n    Application, 0x1470177e0, pid: 8736, label: \'XCUITest_study\'\n  }\n"
```

* po XCUIApplication().buttons
```
    t =   197.14s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   197.51s Find: Descendants matching type Button
    t =   197.51s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   197.53s Find: Descendants matching type Button
    t =   197.53s Requesting snapshot of accessibility hierarchy for app with pid 8736
Find: Target Application 'com.swiftman.XCUITest-study'
  Output: {
    Application, 0x14702f270, pid: 8736, label: 'XCUITest_study'
  }
  ↪︎Find: Descendants matching type Button
    Output: {
      Button, 0x1455458b0, {{25.0, 542.0}, {369.0, 41.0}}, identifier: 'enrollButton', label: 'Enroll'
    }
```

* po XCUIApplication().textFields
```
    t =   243.76s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   244.14s Find: Descendants matching type TextField
    t =   244.14s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   244.15s Find: Descendants matching type TextField
    t =   244.15s Requesting snapshot of accessibility hierarchy for app with pid 8736
Find: Target Application 'com.swiftman.XCUITest-study'
  Output: {
    Application, 0x14552e090, pid: 8736, label: 'XCUITest_study'
  }
  ↪︎Find: Descendants matching type TextField
    Output: {
      TextField, 0x145531650, {{189.0, 422.5}, {36.0, 51.5}}, identifier: 'city'
    }
```

* po XCUIApplication().textFields["city"].tap()
```
    t =   294.44s Tap "city" TextField
    t =   294.81s     Wait for com.swiftman.XCUITest-study to idle
    t =   294.83s     Find the "city" TextField
    t =   294.85s     Check for interrupting elements affecting "city" TextField
    t =   294.86s     Synthesize event
    t =   294.95s     Wait for com.swiftman.XCUITest-study to idle
0 elements
```

* po XCUIApplication().buttons
```
    t =   351.05s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   351.47s Find: Descendants matching type Button
    t =   351.47s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   351.50s Find: Descendants matching type Button
    t =   351.50s Requesting snapshot of accessibility hierarchy for app with pid 8736
Find: Target Application 'com.swiftman.XCUITest-study'
  Output: {
    Application, 0x145539880, pid: 8736, label: 'XCUITest_study'
  }
  ↪︎Find: Descendants matching type Button
    Output: {
      Button, 0x1470505a0, {{25.0, 542.0}, {369.0, 41.0}}, identifier: 'enrollButton', label: 'Enroll'
      Button, 0x147054e40, {{9.0, 825.1}, {72.4, 73.1}}, label: 'Emoji'
      Button, 0x147055060, {{332.6, 824.6}, {72.4, 73.1}}, identifier: 'dictation', label: 'Dictate'
      Button, 0x147053d20, {{2.0, 714.0}, {50.0, 49.0}}, identifier: 'shift', label: 'shift'
      Button, 0x147054a20, {{310.0, 770.0}, {102.0, 49.0}}, identifier: 'Return', label: 'return'
    }
```

* po XCUIApplication().buttons["enrollButton"].tap()
```
    t =   388.71s Tap "enrollButton" Button
    t =   388.72s     Wait for com.swiftman.XCUITest-study to idle
    t =   388.74s     Find the "enrollButton" Button
    t =   388.77s     Check for interrupting elements affecting "enrollButton" Button
    t =   388.79s     Synthesize event
    t =   388.88s     Wait for com.swiftman.XCUITest-study to idle
0 elements
```

* po XCUIApplication().staticTexts
```
    t =   428.18s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   428.56s Find: Descendants matching type StaticText
    t =   428.57s Requesting snapshot of accessibility hierarchy for app with pid 8736
    t =   428.61s Find: Descendants matching type StaticText
    t =   428.61s Requesting snapshot of accessibility hierarchy for app with pid 8736
Find: Target Application 'com.swiftman.XCUITest-study'
  Output: {
    Application, 0x14704ddf0, pid: 8736, label: 'XCUITest_study'
  }
  ↪︎Find: Descendants matching type StaticText
    Output: {
      StaticText, 0x14704e340, {{68.0, 224.5}, {285.5, 26.5}}, identifier: 'welcomeMessage', label: 'Welcome to XCUITest Course '
      StaticText, 0x14704e5e0, {{109.0, 325.0}, {171.5, 31.5}}, identifier: 'enterCity', label: 'Enter Your City '
      StaticText, 0x14704ea20, {{25.0, 651.0}, {369.0, 27.5}}, label: 'Thanks for Joining!'
      StaticText, 0x14704e910, {{180.5, 548.0}, {58.0, 29.0}}, label: 'Enroll'
      StaticText, 0x147056a60, {{9.0, 825.1}, {0.0, 0.0}}
      StaticText, 0x147056c80, {{332.6, 824.6}, {0.0, 0.0}}
    }
```

## Chapter 3. Base Class


## BDD + XCUITest API

## Scalable XCUITest Framework

## XCUITest with EyesXCUI SDK
### applitools
[eyes-xcui-swift-package](https://github.com/applitools/eyes-xcui-swift-package)  
[applitools.com/tutorials](https://applitools.com/tutorials/xcui-swift.html#install-the-sdk)   


## XCUITest on CI

 
# ResultBundle
[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 1편 - 통합 UI테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-1/)  

[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 2편 - 화면 단위 통합 테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-2/)  

[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 3편 - 스펙별 단위 테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-3/)  

# GithubAction
[Swift UI Testing on GitHub Actions CI](https://medium.com/swlh/swift-ui-testing-on-github-actions-ci-6267e6620104)  

[How to Automate XCTests With GitHub Actions](https://betterprogramming.pub/how-to-automate-xctests-with-github-actions-6570fcd21519)  
