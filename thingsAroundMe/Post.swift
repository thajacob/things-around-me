//
//  Post.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 03/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import Foundation

class Post {
    
    
    fileprivate var _imagePath: String!
    fileprivate var _title: String!
    fileprivate var _postDesc: String!
    
    
    var imagePath: String {
        
        return _imagePath
        
    }
    
    var title: String {
        
        return _title
    }
    
    
    var postDesc: String {
        
        return _postDesc
    }
    
    
    init(imagePath: String, title: String, description: String) {
    
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
        
    }
    
    
}
