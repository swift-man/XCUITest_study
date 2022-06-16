//
//  XCUITestSteps.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/17.
//

import Foundation
import XCTest

extension XCUITestBase {
  func givenAppIsReady() {
    XCTContext.runActivity(named: "Given App is Ready") { _ in
      XCTAssertTrue(UITestScreen.enrollButton.element.exists)
    }
  }
  
  func whenIEnter(city: String) {
    XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
      UITestScreen.cityTextField.element.tap()
      UITestScreen.cityTextField.element.typeText(city)
    }
  }
  
  func whenIEnrolled() {
    XCTContext.runActivity(named: "When I Enrolled ") { _ in
      UITestScreen.enrollButton.element.tap()
    }
  }
  
  func thenIShouldSeeThankYouMessage() {
    XCTContext.runActivity(named: "Then I Should See Thanks Message ") { _ in
      XCTAyncAssert(UITestScreen.thankYouMessage.element)
    }
  }
}
