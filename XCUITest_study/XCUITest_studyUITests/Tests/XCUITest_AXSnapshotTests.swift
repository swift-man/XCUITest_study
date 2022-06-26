//
//  XCUITest_AXSnapshotTests.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/27.
//

import XCTest
import Reusable
import AXSnapshot
@testable import XCUITest_study

class XCUITest_AXSnapshotTests: XCTestCase {
  func testViewControllerAXSnapshot() {
    let vc = ViewController.instantiate()
    print("vc.axSnapshot() : \n\(vc.axSnapshot().description)\n")
    
    let result = """
      ------------------------------------------------------------
      Enter Your City
      staticText
      ------------------------------------------------------------
      cityTextField
      TextField
      ------------------------------------------------------------
      Enroll
      button
      ------------------------------------------------------------
      TAUlogo
      image
      ------------------------------------------------------------
      Welcome to XCUITest Course
      staticText
      ------------------------------------------------------------
      testView.Label.text
      staticText
      ------------------------------------------------------------
      """
    
    XCTAssert(
      vc.axSnapshot() == result
    )
  }
}
