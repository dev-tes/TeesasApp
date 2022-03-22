//
//  StringExtension.swift
//  TeesasApp
//
//  Created by Tes on 22/03/2022.
//

import UIKit

extension UIButton {
    
    func addLeading(image: String, text:String) {
        let attachment = NSTextAttachment()
        attachment.image = UIImage(systemName: image)
        
        let attachmentString = NSAttributedString(attachment: attachment)
        let mutableAttributedString = NSMutableAttributedString()
        mutableAttributedString.append(attachmentString)
        
        let string = NSMutableAttributedString(string: text, attributes: [:])
        mutableAttributedString.append(string)
        self.titleLabel?.attributedText = mutableAttributedString
    }
}
