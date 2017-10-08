//
//  ItemTableViewCell.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 8..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    

    // MARK: - View Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.nameLabel.adjustsFontForContentSizeCategory = true
        self.serialNumberLabel.adjustsFontForContentSizeCategory = true
        self.valueLabel.adjustsFontForContentSizeCategory = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
