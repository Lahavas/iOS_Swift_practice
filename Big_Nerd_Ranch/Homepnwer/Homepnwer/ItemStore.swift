//
//  ItemStore.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 7..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ItemStore {
    
    // MARK: - Properties
    
    var allItems: [Item] = [Item]()
    
    // MARK: - Initialization
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
    // MARK: - Methods
    
    @discardableResult func createItem() -> Item {
        
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    
}
