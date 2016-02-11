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
        
        LikeButton.selected = favorited
        
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
