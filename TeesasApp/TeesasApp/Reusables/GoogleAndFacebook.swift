//
//  GoogleAndFacebook.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class GoogleAndFacebook: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.borderWidth = 0
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 5
        heightAnchor.constraint(equalToConstant: 54).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
