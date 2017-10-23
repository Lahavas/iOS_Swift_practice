//
//  Item.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 7..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    // MARK: - Properties
    
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    let itemKey: String
    
    // MARK: - Initialization
    
    init(name: String, valueInDollars: Int, serialNumber: String?) {
        
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        
        if random {
            
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var index = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(index)]
            
            index = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(index)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber =
                UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName,
                      valueInDollars: randomValue,
                      serialNumber: randomSerialNumber)
        } else {
            
            self.init(name: "", valueInDollars: 0, serialNumber: nil)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.dateCreated = aDecoder.decodeObject(forKey: "dateCreated") as! Date
        self.itemKey = aDecoder.decodeObject(forKey: "itemKey") as! String
        self.serialNumber = aDecoder.decodeObject(forKey: "serialNumber") as! String?
        
        self.valueInDollars = aDecoder.decodeInteger(forKey: "valueInDollars")
        
        super.init()
    }
    
    // MARK: - Archiving
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.dateCreated, forKey: "dateCreated")
        aCoder.encode(self.itemKey, forKey: "itemKey")
        aCoder.encode(self.serialNumber, forKey: "serialNumber")
        
        aCoder.encode(self.valueInDollars, forKey: "valueInDollars")
    }
}
