//
//  CellDetails.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 09/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import Foundation
import UIKit





class CellDetails: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet weak var displayImage:UIImageView!
    
    var newImage: UIImage!

    
    
    @IBAction func CancelBtnDidPress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    
        
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayImage.image = newImage
        
    //   print("BLAAAAA \(newImage)")
        
    }
    
    
    
    
    
    
    }








    
