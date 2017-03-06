//
//  DataService.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 06/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    
    static let instance = DataService()
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        let postsData = NSKeyedArchiver.archivedData(withRootObject: _loadedPosts)
        UserDefaults.standard.set(postsData, forKey: "posts")
        UserDefaults.standard.synchronize()
        
        
        
    }
    
    func loadPosts()  {
        if let postsData = UserDefaults.standard.object(forKey: "posts") as? Data {
            if let postArray = NSKeyedUnarchiver.unarchiveObject(with: postsData) as? [Post] {
                            _loadedPosts = postArray
            }
            
        }
        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "posts-Loaded"), object:nil))
        
    }
    
    
    func saveImageAndCreatePath(image:UIImage) -> String {
        let imgData = UIImagePNGRepresentation(image)
        let imgPath = "image\(Date.timeIntervalSinceReferenceDate).png"
        let fullPath = documentPathForFileName(imgPath)
        
        try? imgData?.write(to:URL(fileURLWithPath: fullPath),options: [.atomic])
        return imgPath
        
        
    }
    
    func imageForPath(path: String) -> UIImage? {
        let fullPath = documentPathForFileName(path)
        let image = UIImage(named: fullPath)
        
        return image
        
    }
    
    func addPost(post:Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
        
    }
    
    func documentPathForFileName(_ name: String) -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask,true)
        let fullPath = paths[0] as NSString
        
        return fullPath.appendingPathComponent(name)
    }
    
}
