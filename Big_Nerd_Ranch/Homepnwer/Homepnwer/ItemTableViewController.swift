//
//  ItemTableViewController.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 7..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var itemStore: ItemStore!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsetsMake(statusBarHeight, 0, 0, 0)
        
        self.tableView.contentInset = insets
        self.tableView.scrollIndicatorInsets = insets
    }
    
    // MARK: - Memory Management

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let item = self.itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    // MARK: - Actions
    
    @IBAction func addNewItem(_ sender: UIButton) {
    
        let newItem = self.itemStore.createItem()
        
        if let index = self.itemStore.allItems.index(of: newItem) {
            let indexPath = IndexPath(row: index, section: 0)
            
            self.tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func toggleEditingMode(_ sender: UIButton) {
    
        if self.isEditing {
            
            sender.setTitle("Edit", for: .normal)
            self.setEditing(false, animated: true)
        } else {
            
            sender.setTitle("Done", for: .normal)
            self.setEditing(true, animated: true)
        }
    }
}
