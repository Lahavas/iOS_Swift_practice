//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jaeho on 2017. 9. 20..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Memory Management

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Actions
    
    @IBAction func fahrenheitFieldEditingChanged(_ sender: UITextField) {
        
        if let text = sender.text, !text.isEmpty {
            self.celsiusLabel.text = text
        } else {
            self.celsiusLabel.text = "???"
        }
    }
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
    
        self.textField.resignFirstResponder()
    }
}

