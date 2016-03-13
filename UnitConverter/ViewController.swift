//
//  ViewController.swift
//  UnitConverter
//
//  Created by Toni Itkonen on 13/03/16.
//  Copyright © 2016 The-Northern-Borders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func textFieldReturn(sender: AnyObject) {
        sender.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        tempText.endEditing(true)
    }

    // Actions
    @IBAction func convertTemp(sender: AnyObject) {
        if let fahrenheit = Double(tempText.text!) {
            let celsius = (fahrenheit - 32)/1.8
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
    }

}

