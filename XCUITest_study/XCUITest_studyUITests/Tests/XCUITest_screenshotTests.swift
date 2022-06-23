//
//  XCUITest_screenshotTests.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/24.
//

import XCTest
import UIKit
@testable import XCUITest_study

class XCUITest_screenshotTests: XCUITestBase {
  func testTakeScreenshotOfMainWindow() {
    let app = XCUIApplication()
    app.launch()
    let screenshot = app.windows.firstMatch.screenshot()
    let attachment = XCTAttachment(screenshot: screenshot)
    attachment.lifetime = .keepAlways
    add(attachment)
  }
  
  func testScreenshot() {
    // Given
    let data = "testScreenshot"
    // When
    let view = TestView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
    view.text = data
    // Then
    view.layoutIfNeeded()
    let screenshot = view.asImage()
    // 이 라인에 breakPoint를 걸면, `screenshot` 변수에 이미지가 어떻게 들어갔는지 확인 할 수 있습니다.

    // 만들어진 스샷들을 이 테스트의 첨부파일로 관리합니다
    let attachment = XCTAttachment(image: screenshot)
    attachment.lifetime = .keepAlways
    self.add(attachment)
  }
}
