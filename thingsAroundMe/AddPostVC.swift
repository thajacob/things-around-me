//
//  AddPostVC.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 04/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }
    
    
    
        @IBAction func addPicBtnPressed(_ sender: UIButton) {
            sender.setTitle("", for: .normal)
            
            
            
        }
        
        @IBAction func makePostBtnPressed(_ sender: UIButton) {
            
            
            
        }
        
        @IBAction func cancelBtnPressed(_ sender: UIButton) {
                dismiss(animated: true, completion: nil)
            
        
        
    }

        

}
