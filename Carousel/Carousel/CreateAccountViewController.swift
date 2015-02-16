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
    
    //create a dropbox assets and button
    @IBOutlet weak var createImage: UIImageView!
    @IBOutlet weak var createButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createButton.enabled = false
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
