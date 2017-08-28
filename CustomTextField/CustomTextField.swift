//
//  CustomTextField.swift
//  UICustomTextField
//
//  Created by nyg on 17 Apr 15.
//  Copyright (c) 2015 nyg. All rights reserved.
//

import UIKit

class CustomTextField : UITextField {

    let borderWidth: CGFloat = 1
    let padding: CGFloat = 10

    let borderLayer = CALayer()

    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)

        borderLayer.borderColor = UIColor.red.cgColor
        borderLayer.borderWidth = borderWidth
        layer.addSublayer(borderLayer)

        borderStyle = .none // remove default borders
        clipsToBounds = true // everything outside the frame is not drawn
        contentMode = .redraw // to handle orientation change
    }

    override func draw(_ rect: CGRect) {
        borderLayer.frame = CGRect(
            x: -borderWidth,
            y: -borderWidth,
            width: rect.width + 2 * borderWidth,
            height: rect.height + borderWidth)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
