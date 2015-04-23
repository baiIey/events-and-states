//
//  SignInViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/15/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var signInTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginField: UIView!
    @IBOutlet weak var loginContainer: UIView!
    
    // Sign In Group
    @IBOutlet weak var signInContainer: UIView!
    @IBOutlet weak var signInImage: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var signInContainerInitialPosition : CGFloat!
    var loginContainerInitialPosition : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Initialize by turning off button and declaring starting positions for containers
        // signInButton.enabled = false
        signInContainerInitialPosition = signInContainer.center.y
        loginContainerInitialPosition = loginContainer.center.y
        
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
//        if (signInTextField.text.isEmpty || passwordTextField.text.isEmpty){
//            signInButton.enabled = false
//        } else {
//            signInButton.enabled = true
//        }
    }

    func alertViewEmail(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
    
    func alertViewFailed(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
    
    func alertViewLoggingIn(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    @IBAction func signInDidPress(sender: AnyObject) {
        if (signInTextField.text.isEmpty){
            // if Sign In Field is empty, display Enter Email Address alert
            var alertViewEmail = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
            alertViewEmail.show()
        } else {
            // otherwise, do show Sign In alert and check
            var alertViewLoading = UIAlertView(title: "Signing In", message: nil, delegate: nil, cancelButtonTitle: nil)
            alertViewLoading.show()
            delay(1, closure: { () -> () in
                // dismiss loading screen
                alertViewLoading.dismissWithClickedButtonIndex(0, animated: true)
                // check if password is password
                if (self.passwordTextField.text == "password") {
                    self.performSegueWithIdentifier("signInSegue", sender: self)
                } else {
                    //wrong password alert
                    var alertViewFailed = UIAlertView(title: "Login Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")
                    alertViewFailed.show()
                }
            })

            
        }
    }
    

    
    // animation properties for showing keyboard
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            // moves containers up to new position
            self.signInContainer.center.y = 250
            self.loginContainer.center.y = 120
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    // animation for hiding keyboard
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            // moves containers back to origin
            self.signInContainer.center.y = self.signInContainerInitialPosition
            self.loginContainer.center.y = self.loginContainerInitialPosition
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
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
