//
//  ItemDetailViewController.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 9..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var serialNumberField: UITextField!
    @IBOutlet var valueField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    
    var item: Item!
    
    let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }()
    
    let dateFormatter: DateFormatter = {
       let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.nameField.text = self.item.name
        self.serialNumberField.text = self.item.serialNumber
        self.valueField.text =
            self.numberFormatter.string(from: NSNumber(value: self.item.valueInDollars))
        self.dateLabel.text =
            self.dateFormatter.string(from: self.item.dateCreated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.item.name = self.nameField.text ?? ""
        self.item.serialNumber = self.serialNumberField.text
        
        if let valueText = self.valueField.text,
            let value = self.numberFormatter.number(from: valueText) {
            self.item.valueInDollars = value.intValue
        } else {
            self.item.valueInDollars = 0
        }
    }
    
    // MARK: - Memory Management

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
