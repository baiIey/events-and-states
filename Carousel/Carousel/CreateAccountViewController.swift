//
//  CreateAccountViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/12/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var formContainer: UIView!
    @IBOutlet weak var text: UIImageView!
    @IBOutlet weak var submitContainer: UIView!
    
    //create a dropbox assets and button
    @IBOutlet weak var createImage: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var termsCheckbox: UIButton!
    
    var createAccountContainerOrigin : CGFloat!
    var formContainerOrigin : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createButton.enabled = false
        createAccountContainerOrigin = submitContainer.center.y
        formContainerOrigin = formContainer.center.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backArrow(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
    }

    @IBAction func didStartEditing(sender: AnyObject) {
        if (emailTextField.text.isEmpty || passwordTextField.text.isEmpty || confirmPasswordTextField.text.isEmpty){
            createButton.enabled = false
        } else {
            createButton.enabled = true
        }
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            self.formContainer.center.y = 150
            self.submitContainer.center.y = 250
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            self.formContainer.center.y = self.formContainerOrigin
            self.submitContainer.center.y = self.createAccountContainerOrigin

            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    @IBAction func termsCheckboxDidPress(sender: AnyObject) {
        termsCheckbox.selected = !termsCheckbox.selected
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
