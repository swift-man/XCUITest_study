//
//  XCUITest_studyUITests.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/15.
//

import XCTest

class XCUITest_studyUITests: XCUITestBase {
  func testAllElementsonMainScreen() throws {
    app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.staticTexts["enterCity"].tap()
    app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.staticTexts["Please Enter City"].tap()
    XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
  }
  
  func testThankYouMessage() {
    app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.textFields["city"].tap()
    app.textFields["city"].typeText("London")
    app.buttons["enrollButton"].tap()
    XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    
    // Debug Console
    // po XCUIApplication().debugDescription
    // po XCUIApplication().buttons
    // po XCUIApplication().textFields
    // po XCUIApplication().textFields["city"].tap()
    // po XCUIApplication().textFields["city"].typeText("London")
    // po XCUIApplication().buttons
    // po XCUIApplication().buttons["enrollButton"].tap()
    // po XCUIApplication().staticTexts
  }
}
