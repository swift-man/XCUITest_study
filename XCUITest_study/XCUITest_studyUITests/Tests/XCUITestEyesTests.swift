//
//  XCUITestEyesTests.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/17.
//

import Foundation
import XCTest
import EyesXCUI

class XCUIEyesTest: XCUITestBase {
  func testTAUApplitoolsEyeXCUI() {
    // Start the test.
    eyes.open(withApplicationName: "XCUITest_study", testName: "Live Demo of EyesXCUI SDK")
    
    // Visual checkpoint #1.
    eyes.check(withTag: "XCUITest_study", andSettings: Target.window().timeout(inSeconds: 5))
    
    // Click the "Click me!" button.
    XCUIApplication().buttons["enrollButton"].tap()
    
    // Visual checkpoint #2.
    eyes.checkWindow(withTag: "Please Enter City")
  }
}
