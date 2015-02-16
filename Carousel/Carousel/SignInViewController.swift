//
//  SignInViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/15/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signInTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Sign In Group
    @IBOutlet weak var signInImage: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signInButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backArrow(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func didStartEditing(sender: AnyObject) {
        if (signInTextField.text.isEmpty || passwordTextField.text.isEmpty){
            //
        } else {
            signInButton.enabled = true
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
