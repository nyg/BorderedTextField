//
//  CustomTextField.swift
//  UICustomTextField
//
//  Created by NYG on 17 Apr 15.
//  Copyright (c) 2015 nyg. All rights reserved.
//

import UIKit

class CustomTextField : UITextField {

    static let borderWidth = CGFloat(0.5)
    static let padding = CGFloat(10)

    var borderLayer = CALayer()

    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
        
        borderLayer.borderColor = UIColor(red: 208.0/255, green: 208.0/255, blue: 208.0/255, alpha: 1).cgColor
        borderLayer.borderWidth = CustomTextField.borderWidth

        layer.addSublayer(borderLayer)
        borderStyle = .none

        let placeholderColor = UIColor(red: 115.0/255, green: 115.0/255, blue: 115.0/255, alpha: 1)

        if let placeholder = placeholder {
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: placeholderColor])
        }
    }
    
    func updateFrame() {
        borderLayer.frame = CGRect(x: 0,
                                   y: frame.height - CustomTextField.borderWidth,
                               width: frame.width,
                              height: CustomTextField.borderWidth)
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: CustomTextField.padding, dy: CustomTextField.padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
