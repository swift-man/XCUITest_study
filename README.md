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

## Attachments to Tests
[Adding Attachments to Tests, Activities, and Issues](https://developer.apple.com/documentation/xctest/activities_and_attachments/adding_attachments_to_tests_activities_and_issues)

## XCUITest on CI
[Creating automated Screenshots using XCUITest](https://blog.winsmith.de/english/ios/2020/04/14/xcuitest-screenshots.html)  
[Swift UI Testing on GitHub Actions CI](https://medium.com/swlh/swift-ui-testing-on-github-actions-ci-6267e6620104)  

# xcodebuild
[Building Swift Packages or Apps that Use Them in Continuous Integration Workflows](https://developer.apple.com/documentation/xcode/building-swift-packages-or-apps-that-use-them-in-continuous-integration-workflows)  
[Command Line Tool을 사용하여 Xcode 프로젝트를 빌드 및 테스트 하기](https://velog.io/@devapploper/Command-Line-Tool%EC%9D%84-%EC%82%AC%EC%9A%A9%ED%95%98%EC%97%AC-Xcode-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EB%A5%BC-%EB%B9%8C%EB%93%9C-%EB%B0%8F-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%95%98%EA%B8%B0)  
[xcodebuild](https://liveupdate.tistory.com/375)  

# TestPlans
[Xcode Test Plans](https://useyourloaf.com/blog/xcode-test-plans/)  
[XCode TestPlan: specify which configuration to use from command line](https://stackoverflow.com/questions/69563768/xcode-testplan-specify-which-configuration-to-use-from-command-line)
 
# ResultBundle
[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 1편 - 통합 UI테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-1/)  

[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 2편 - 화면 단위 통합 테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-2/)  

[swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing)  

[AXSnapshot](https://github.com/banksalad/AXSnapshot/blob/main/Sources/AXSnapshot/AXSnapshot.swift)  

[xcparse](https://github.com/ChargePoint/xcparse)  

[뱅크샐러드 iOS팀이 숨쉬듯이 테스트코드 짜는 방식 3편 - 스펙별 단위 테스트](https://blog.banksalad.com/tech/test-in-banksalad-ios-3/)  

# GithubAction
## docs.github
[Building and testing Swift](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-swift)  
[job-context](https://docs.github.com/en/actions/learn-github-actions/contexts#job-context)  
[Events that trigger workflows](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows)

## UITesting
[About self-hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners)  
[Swift UI Testing on GitHub Actions CI](https://medium.com/swlh/swift-ui-testing-on-github-actions-ci-6267e6620104)  

[How to Automate XCTests With GitHub Actions](https://betterprogramming.pub/how-to-automate-xctests-with-github-actions-6570fcd21519)  

## starter-workflows
[starter-workflows](https://github.com/actions/starter-workflows/tree/main/ci)  

## marketplace
[Setup Xcode version](https://github.com/marketplace/actions/setup-xcode-version)
[Xcodebuild Action](https://github.com/marketplace/actions/xcodebuild-action)

## setup
[GitbugAction1](https://eeyatho.tistory.com/89?category=976382)  
[GitbugAction2](https://eeyatho.tistory.com/105)  
[1. GitHub Action 개념, 기능 (CI/CD)](https://ios-development.tistory.com/788)  
[2. GitHub Action 사용 방법 (CI/CD)](https://ios-development.tistory.com/789)
[Github Actions 시작해보기](https://zeddios.tistory.com/825)  
[GitHub Actions로 간단히 CI 서버 대신하기](https://huns.me/posts/2019-12-17-34)  
[[Github Actions] 테스트 커버리지 보여주기 기록](https://eunjin3786.tistory.com/206)  
[GitHub Actions를 이용한 iOS 배포 파이프라인 자동화 구축하기](https://blog.mathpresso.com/github-actions%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%9C-ios-%EB%B0%B0%ED%8F%AC-%ED%8C%8C%EC%9D%B4%ED%94%84%EB%9D%BC%EC%9D%B8-%EC%9E%90%EB%8F%99%ED%99%94-%EA%B5%AC%EC%B6%95%ED%95%98%EA%B8%B0-3319696005e2)  

## schedule
[Github 액션으로 스케쥴링 작업하기](https://yceffort.kr/2020/07/cron-job-with-github-actions)

## SlackHook
[Github Action과 Slack 연동해서 빌드 결과 받기](https://velog.io/@tigger/Github-Action-Slack%EA%B3%BC-%EC%97%B0%EB%8F%99%ED%95%B4%EC%84%9C-%EB%B9%8C%EB%93%9C-%EA%B2%B0%EA%B3%BC-%EB%B0%9B%EA%B8%B0)  
[Slack Notification from Github Actions — Mac Nodes or Otherwise!](https://sandeepqaops.medium.com/slack-notification-from-github-actions-mac-nodes-or-otherwise-98601d4c53ad)  
[Slack Notify](https://github.com/marketplace/actions/slack-notify)  
