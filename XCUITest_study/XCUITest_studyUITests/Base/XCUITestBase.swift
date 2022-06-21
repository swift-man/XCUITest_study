//
//  XCUITestBase.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/16.
//

import XCTest

class XCUITestBase: XCTestCase {
  let app: XCUIApplication = {
    let app = XCUIApplication(bundleIdentifier: "com.swiftman.XCUITest-study")
    app.launchArguments += ["-UIPreferredContentSizeCategoryName", "UICTContentSizeCategoryAccessibilityXXXL"]
    app.launchArguments += ["IS_UI_TESTING"]
    return app
  }()
  
  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    app.launch()
  }
  
  override func tearDown() {
    super.tearDown()
    app.terminate()
  }
  
  func XCTAyncAssert(_ element: XCUIElement) {
    let isElementExist = element.waitForExistence(timeout: 10)
    if isElementExist {
      XCTAssertTrue(element.exists)
    }
  }
}

/// 해당 UI요소 안에서 특정 문자열을 포함하는 UI요소들의 갯수를 출력하는 extension 입니다.
/// 이벤트 로그 결과 등을 검사할 때 유용합니다.
extension XCUIElement {
    func numberOfLabelsContaining(text: String) -> Int {
        let predicate = NSPredicate(format: "label == %@", text)
        return staticTexts.matching(predicate).count
    }
}

extension XCUIElementQuery {
    func numberOfLabelsContaining(text: String) -> Int {
        let predicate = NSPredicate(format: "label == %@", text)
        return self.containing(predicate).count
    }
}
