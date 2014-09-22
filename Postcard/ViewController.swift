//
//  ViewController.swift
//  Postcard
//
//  Created by Doug Child on 9/11/14.
//  Copyright (c) 2014 ___DOUG___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    @IBOutlet weak var oneText: UITextField!

    @IBOutlet weak var typeSomeText: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: AnyObject) {
        hiddenLabel.text = oneText.text
        hiddenLabel.sizeToFit()
        // Need some code to make resizing work the first time
        hiddenLabel.hidden = false
        oneText.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    }

