//
//  TestView.swift
//  XCUITest_study
//
//  Created by SwiftMan on 2022/06/24.
//

import UIKit

class TestView: UIView {
  let label: UILabel = {
    let label = UILabel()
    label.text = "testView.Label.text"
    label.backgroundColor = .green
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  var text: String = "" {
    didSet {
      label.text = text
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubview(label)
    
    backgroundColor = .white
    label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 200, height: 40)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension UIView {
  func asImage(scale: CGFloat = UIScreen.main.scale) -> UIImage {
    let rendererFormat = UIGraphicsImageRendererFormat()
    rendererFormat.scale = scale
    let renderer = UIGraphicsImageRenderer(bounds: bounds, format: rendererFormat)
    return renderer.image { rendererContext in
      layer.render(in: rendererContext.cgContext)
    }
  }
}
