//
//  ViewController.swift
//  UITextFieldDemo
//
//  Created by Meghan Lynn on 10/9/18.
//  Copyright © 2018 Grayslake Central HS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onChangeToBlueButtonTapped(_ sender: UIButton) {
        nameLabel.backgroundColor = .blue
        nameLabel.textColor = .white
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabel.text = textField.text
        textField.resignFirstResponder()
        textField.text = ""
        return true
    }
    
}

