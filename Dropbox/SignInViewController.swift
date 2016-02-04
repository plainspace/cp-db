//
//  SignInViewController.swift
//  Dropbox
//
//  Created by Jared on 2/2/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var WelcomeButton: UIButton!
    
    @IBAction func WelcomeButtonAction(sender: AnyObject) {
    
        dismissViewControllerAnimated(true, completion: nil)
    
        // navigationController?.popToRootViewControllerAnimated(true)
        // navigationController?.popViewControllerAnimated(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmailField.becomeFirstResponder()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBAction func didPressSignin(sender: UIButton) {
    
        if EmailField.text!.isEmpty || PasswordField.text!.isEmpty {
            
            SignInButton.enabled = false
            
        }
        else {
            
            SignInButton.enabled = true
            
        }
        
    }
    
    
    @IBOutlet weak var EmailField: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBAction func EmailEditingChanged(sender: AnyObject) {
        
        if EmailField.text!.isEmpty || PasswordField.text!.isEmpty {
            
           SignInButton.enabled = false
            
        }
        else {
            
            SignInButton.enabled = true
            
        }
        
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
