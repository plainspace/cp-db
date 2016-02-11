//
//  FavoritesViewController.swift
//  Dropbox
//
//  Created by Jared on 2/6/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    var favState :Bool = false
    
    @IBOutlet weak var FavoritesContainer: UIView!
    
    @IBOutlet weak var FavoritesImage: UIImageView!
    
    @IBOutlet weak var FavoritedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
    
        let favorited = NSUserDefaults.standardUserDefaults().boolForKey("favorited")
        
        if favorited == true {
            FavoritesImage.hidden = true
            FavoritedImage.hidden = false
            print("favorited image")
        } else {
            FavoritesImage.hidden = false
            FavoritedImage.hidden = true
            print("not favorited image")
        }
        
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
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
