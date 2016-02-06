//
//  NewAccountViewController.swift
//  Dropbox
//
//  Created by Jared on 2/2/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController {
    
    @IBOutlet weak var CreateButton: UIButton!
    @IBAction func DidPressCreateButton(sender: AnyObject) {
    
    }
    
    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    
    @IBAction func PasswordEditingChanged(sender: AnyObject) {
        
        if PasswordField.text!.isEmpty {
            CreateButton.enabled = false
        }
        else {
            CreateButton.enabled = true
        }

    }
    
    
    @IBOutlet weak var welcomeButton: UIButton!
    
    @IBAction func welcomeButtonAction(sender: AnyObject) {
        
        FirstNameField.resignFirstResponder()
        LastNameField.resignFirstResponder()
        EmailField.resignFirstResponder()
        PasswordField.resignFirstResponder()
        
        dismissViewControllerAnimated(true, completion: nil) 
        
        // navigationController?.popToRootViewControllerAnimated(true)
        //navigationController?.popViewControllerAnimated(true)
        
    }
    
    func keyboardWillShow(notificaiton: NSNotification!) {
        
    }
    
    func keyboardWillHide(notificaiton: NSNotification!) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        if PasswordField.text!.isEmpty {
            CreateButton.enabled = false
        }
        else {
            CreateButton.enabled = true
        }

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
