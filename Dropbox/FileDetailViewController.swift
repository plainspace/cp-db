//
//  FileDetailViewController.swift
//  Dropbox
//
//  Created by Jared on 2/4/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class FileDetailViewController: UIViewController {
    
    @IBOutlet weak var LikeButton: UIButton!
    
    @IBOutlet weak var LikedButton: UIButton!
    
    let favorites = NSUserDefaults.standardUserDefaults()

    @IBAction func LikeButton(sender: UIButton) {
            
        LikeButton.selected = !LikeButton.selected
        
        if LikeButton.selected {
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "favorited")
                print("favorited")
                favorites.synchronize()
        } else {
            NSUserDefaults.standardUserDefaults().setBool(false, forKey: "favorited")
                print("not favorited")
                favorites.synchronize()
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let favorited = NSUserDefaults.standardUserDefaults().boolForKey("favorited")
        
        if favorited == true {
            LikeButton.hidden = true
            LikedButton.hidden = false
            print("favorited button")
        } else {
            LikeButton.hidden = false
            LikedButton.hidden = true
            print("not favorited button")
        }
        
        // let favorited = NSUserDefaults.standardUserDefaults().boolForKey("favorited")
        
        // LikeButton.selected = !LikeButton.selected
        
//        if LikeButton.selected {
//            LikedButton.hidden = false
//            LikeButton.hidden = true
//        } else {
//            LikedButton.hidden = true
//            LikeButton.hidden = false
//        }
        
//        if LikeButton == true {
//            LikedButton.hidden = false
//            LikeButton.hidden = true
//            print("favorited button")
//        } else {
//            LikedButton.hidden = true
//            LikeButton.hidden = false
//            print("not favorited button")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
