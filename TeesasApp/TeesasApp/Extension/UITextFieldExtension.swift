//
//  UITextFieldExtension.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

extension UITextField {
  class func makeTextField() -> UITextField {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.cornerRadius = 27.5
    textField.heightAnchor.constraint(equalToConstant: 55).isActive = true
    textField.layer.borderWidth = 1
    return textField
  }
  func setPadding(left: CGFloat? = nil, right: CGFloat? = nil) {
    if let left = left {
      let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.size.height))
      self.leftView = paddingView
      self.leftViewMode = .always
    }
    if let right = right {
      let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: self.frame.size.height))
      self.rightView = paddingView
      self.rightViewMode = .always
    }
  }
}
