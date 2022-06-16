//
//  XCUITest_studyUITests.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/15.
//

import XCTest

class XCUITest_studyUITests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testAllElementsonMainScreen() throws {
    let app = XCUIApplication()
    app.launch()
    
    app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.staticTexts["enterCity"].tap()
    app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.staticTexts["Please Enter City"].tap()
    XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
  }
  
  func testThankYouMessage() {
    let app = XCUIApplication()
    app.launch()
    
    app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    XCUIApplication().textFields["city"].tap()
    XCUIApplication().textFields["city"].typeText("London")
    XCUIApplication().buttons["enrollButton"].tap()
    XCTAssertTrue(XCUIApplication().staticTexts["Thanks for Joining!"].exists)
    
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
  
  func testLaunchPerformance() throws {
    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
      // This measures how long it takes to launch your application.
      measure(metrics: [XCTApplicationLaunchMetric()]) {
        XCUIApplication().launch()
      }
    }
  }
}
