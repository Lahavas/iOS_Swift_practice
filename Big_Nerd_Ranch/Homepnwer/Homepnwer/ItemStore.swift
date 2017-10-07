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
    
    // MARK: - Methods
    
    @discardableResult func createItem() -> Item {
        
        let newItem = Item(random: true)
        
        self.allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = self.allItems.index(of: item) {
            self.allItems.remove(at: index)
        }
    }
}
