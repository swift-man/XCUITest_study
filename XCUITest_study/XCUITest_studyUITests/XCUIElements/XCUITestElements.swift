//
//  XCUITestElements.swift
//  XCUITest_studyUITests
//
//  Created by SwiftMan on 2022/06/17.
//

import Foundation
import XCTest

enum UITestScreen: String {
  case welcomeMessage = "welcomeMessage"
  case taulogo = "TAUlogo"
  case enterCityLabel = "enterCity"
  case cityTextField = "city"
  case enrollButton = "enrollButton"
  case thankYouMessage = "Thanks for Joining!"
  case errorMessage = "Please Enter City"
  
  var element: XCUIElement {
    switch self {
    case .welcomeMessage:
      return XCUIApplication().staticTexts[rawValue]
    case .taulogo:
      return XCUIApplication().images[rawValue]
    case .enterCityLabel:
      return XCUIApplication().staticTexts[rawValue]
    case .cityTextField:
      return XCUIApplication().textFields[rawValue]
    case .enrollButton:
      return XCUIApplication().buttons[rawValue]
    case .thankYouMessage:
      return XCUIApplication().staticTexts[rawValue]
    case .errorMessage:
      return XCUIApplication().staticTexts[rawValue]
    }
  }
}
