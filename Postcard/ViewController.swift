//
//  ViewController.swift
//  Postcard
//
//  Created by Dev Shah on 4/12/15.
//  Copyright (c) 2015 Sunya Innovations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var nameTextFld: UITextField!
    @IBOutlet weak var msgTextFld: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailPressed(sender: UIButton) {
        msgLabel.hidden = false
        msgLabel.text = msgTextFld.text
        msgLabel.textColor = UIColor.redColor()
        
        msgTextFld.text = ""
        msgTextFld.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

