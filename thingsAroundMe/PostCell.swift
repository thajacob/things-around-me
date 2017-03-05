//
//  PostCell.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 03/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbL: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
   

    
    func configureCell(_ post: Post) {
        titleLbL.text = post.title
        descLbl.text = post.postDesc
    }
    
    
    
    
}
