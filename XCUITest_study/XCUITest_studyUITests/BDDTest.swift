//
//  BDDTest.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/16.
//

import Foundation
import XCTest

class BDDTest: XCUITestBase {
  func testThankYouMessageInBDStyle() {
    givenAppIsReady()
    whenIEnter(city: "London")
    whenIEnrolled()
    thenIShouldSeeThankYouMessage()
  }
}

extension XCUITestBase {
  func givenAppIsReady() {
    XCTContext.runActivity(named: "Given App is Ready") { _ in
      XCTAssertTrue(app.buttons["enrollButton"].exists)
    }
  }
  
  func whenIEnter(city: String) {
    XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
      app.textFields["city"].tap()
      app.textFields["city"].typeText(city)
    }
  }
  
  func whenIEnrolled() {
    XCTContext.runActivity(named: "When I Enrolled ") { _ in
      app.buttons["enrollButton"].tap()
    }
  }
  
  func thenIShouldSeeThankYouMessage() {
    XCTContext.runActivity(named: "Then I Should See Thanks Message ") { _ in
      XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
  }
}
