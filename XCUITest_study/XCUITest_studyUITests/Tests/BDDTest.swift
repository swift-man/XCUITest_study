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
