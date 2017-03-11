//
//  ViewController.swift
//  thingsAroundMe
//
//  Created by jakub skrzypczynski on 03/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    
   // var posts = [Post]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        DataService.instance.loadPosts()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.onPostLoaded(_:)), name: NSNotification.Name(rawValue: "posts-Loaded"), object: nil)
        
        
//        let post = Post(imagePath: "", title: "Post 1", description: "Post 1 Description")
//        let post2 = Post(imagePath: "", title: "Post 2", description: " I am the second  post")
//        let post3 = Post(imagePath: "", title: "Post 3", description: " I am the most important post")
//        
//        posts.append(post)
//        posts.append(post2)
//        posts.append(post3)
        
        
        
        tableView.reloadData()
        
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let post = DataService.instance.loadedPosts[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
                cell.configureCell(post)
                return cell
            }
            return PostCell()
        
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return DataService.instance.loadedPosts.count
        }
    
    func onPostLoaded(_ notif:AnyObject) {
        
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "celldetalis", sender: DataService.instance.loadedPosts[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let post = sender as? Post {
            if let callDetailsVC = segue.destination as? CellDetails {
                // post.imagePath contains the path to the image
                // TODO: load the image, create a new UIImage and set it on the next line
                 let loadImage = DataService.instance.documentPathForFileName(post.imagePath)
                    if let new = UIImage(contentsOfFile: loadImage) {
                
                   callDetailsVC.newImage = new
                

            
            }
  }
        }
}
}



 
