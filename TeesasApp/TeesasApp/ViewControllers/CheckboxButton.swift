//
//  CheckboxButton.swift
//  TeesasApp
//
//  Created by Tes on 22/03/2022.
//

import UIKit

class CheckboxButton: UIView {
    
    var isChecked = false
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isHidden = false
        imageView.image = UIImage(systemName: "checkmark")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemBackground
        
        return imageView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(imageView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func toggle(){
        self.isChecked = !isChecked
        imageView.isHidden = !isChecked
    }
    
}
