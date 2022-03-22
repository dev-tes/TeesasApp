//
//  GreenButton.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class GreenButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
       setTitle("Reset Password", for: .normal)
       layer.borderWidth = 0
       translatesAutoresizingMaskIntoConstraints = false
       clipsToBounds = true
       titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       layer.cornerRadius = 30
       layer.borderWidth = 1
        backgroundColor = .systemGreen
        layer.borderColor = UIColor.systemGreen.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
