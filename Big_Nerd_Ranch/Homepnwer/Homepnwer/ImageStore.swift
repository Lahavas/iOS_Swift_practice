//
//  ImageStore.swift
//  Homepnwer
//
//  Created by Jaeho on 2017. 10. 10..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ImageStore {
    
    // MARK: - Properties
    
    let cache = NSCache<NSString, UIImage>()
    
    // MARK: - Methods
    
    func setImage(_ image: UIImage, forKey key: String) {
        self.cache.setObject(image, forKey: key as NSString)
    }
    
    func image(forKey key: String) -> UIImage?{
        return self.cache.object(forKey: key as NSString)
    }
    
    func deleteImage(forKey key: String) {
        self.cache.removeObject(forKey: key as NSString)
    }
}
