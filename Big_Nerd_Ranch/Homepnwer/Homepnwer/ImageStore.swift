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
        
        let url = self.imageURL(forKey: key)
        
        if let data = UIImageJPEGRepresentation(image, 0.5) {
            let _ = try? data.write(to: url, options: [.atomic])
        }
    }
    
    func image(forKey key: String) -> UIImage?{
        
        if let existingImage = self.cache.object(forKey: key as NSString) {
            return existingImage
        }
        
        let url = self.imageURL(forKey: key)
        guard let imageFromDisk = UIImage(contentsOfFile: url.path) else {
            return nil
        }
        
        self.cache.setObject(imageFromDisk, forKey: key as NSString)
        return imageFromDisk
    }
    
    func deleteImage(forKey key: String) {
        self.cache.removeObject(forKey: key as NSString)
        
        let url = imageURL(forKey: key)
        do {
            try FileManager.default.removeItem(at: url)
        } catch let deleteError {
            print("Error removing the image from disk: \(deleteError)")
        }
    }
    
    func imageURL(forKey key: String) -> URL {
        
        let documentsDirectories =
            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        
        return documentDirectory.appendingPathComponent(key)
    }
}
