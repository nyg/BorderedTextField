//
//  ViewController.swift
//  CustomTextField
//
//  Created by user on 08.08.17.
//  Copyright © 2017 nyg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: CustomTextField!

    override func viewDidLayoutSubviews() {
        textField.updateFrame()
    }
}
