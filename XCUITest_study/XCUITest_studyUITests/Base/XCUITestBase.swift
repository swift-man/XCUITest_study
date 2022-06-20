//
//  XCUITestBase.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/16.
//

import XCTest

class XCUITestBase: XCTestCase {
  var app = XCUIApplication()
  
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
