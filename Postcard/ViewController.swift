//
//  ViewController.swift
//  Postcard
//
//  Created by Luc Bednarek on 30/09/14.
//  Copyright (c) 2014 Luc Bednarek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Button press actions
        messageLabel.hidden = false
        messageLabel.text = EnterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail verstuurd", forState: UIControlState.Normal)
    }
    
}

