//
//  ViewController.swift
//  XCUITest_study
//
//  Created by SwiftMan on 2022/06/15.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var welcomeToXCUITest: UILabel!
  @IBOutlet weak var enterCity: UILabel!
  @IBOutlet weak var cityValue: UITextField!
  @IBOutlet weak var thanksMessage: UILabel!
  @IBOutlet weak var TAUImage: UIImageView!
  
  @IBAction func enrollButton(_ sender: Any) {
    thanksMessage.isHidden = false
    
    if cityValue.text == "" {
      thanksMessage.text = "Please Enter City"
      thanksMessage.textColor = UIColor.red
    } else {
      thanksMessage.text = "Thanks for Joining!"
      thanksMessage.textColor = UIColor.green
      cityValue.text = ""
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    thanksMessage.isHidden = true
    
    let testView = TestView()
    testView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(testView)
    
    testView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10).isActive = true
    testView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
  }
}

