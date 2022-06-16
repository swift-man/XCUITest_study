//
//  XCUITestBase.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/16.
//

import XCTest
import EyesXCUI

class XCUITestBase: XCTestCase {
  var app = XCUIApplication()
  
  var eyes = Eyes()
  
  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    app.launch()
    eyes.apiKey = "upM11013BqCml9IwxLwKJytzIOmv2mbmqXa7BW2I105106Q14110"
  }
  
  override func tearDown() {
    super.tearDown()
    app.terminate()
    
    // End the test.
    do {
      try eyes.close()
    } catch {
      eyes.abortIfNotClosed()
    }
  }
  
  func XCTAyncAssert(_ element: XCUIElement) {
    let isElementExist = element.waitForExistence(timeout: 10)
    if isElementExist {
      XCTAssertTrue(element.exists)
    }
  }
}
