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
    
    // Chapter 6. Exploring XCUITest API
    // po XCUIApplication().launch()
    // po XCUIApplication().launchArguments = ["UITest", "Mocks"]
    // po XCUIApplication().launchEnvironment =
    // po XCUIApplication(bundleIdentifier: "com.apple.news").launch()
    // po XCUIApplication().launch()
    // po XCUIApplication().buttons
    // po XCUIApplication().buttons["enrollButton"]
    // po XCUIApplication().buttons["enrollButton"].tap()
    // po XCUIApplication().images
    // po XCUIApplication().staticTexts
    // po XCUIApplication().buttons
    // po XCUIApplication().staticTexts
    // po XCUIApplication().staticTexts.element(boundBy: 0)
    // po XCUIApplication().textFields
  }
}
