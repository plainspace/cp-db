//
//  FileDetailViewController.swift
//  Dropbox
//
//  Created by Jared on 2/4/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class FileDetailViewController: UIViewController {
    
    @IBAction func LikeButton(sender: UIButton) {
    
        if sender.selected == false {
            sender.selected = true
        }
        else {
            sender.selected = false
        }
        
        let favorites = NSUserDefaults.standardUserDefaults()
        favorites.setBool(true, forKey: "favorited")
        favorites.synchronize()
        
        let favorited = favorites.boolForKey("favorited")
        
        if favorites.boolForKey("true"){
            // Perform some action
            print("true")
        }
        else {
            print("false")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
