//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/13/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = settingsImage.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backX(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
//    // Annoyed that this doesn't work
//    @IBAction func signOutButton(sender: AnyObject) {
//        navigationController!.popToRootViewControllerAnimated(true)
//    }

//    @IBAction func signOut(sender: AnyObject) {
//navigationController!.popToRootViewControllerAnimated(true)
//    var actionSheet = UIActionSheet(title: "Are you sure?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Logout")
//        actionSheet.showInView(view)
//    }
//    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        if (buttonIndex == 0) {
//            navigationController!.popToRootViewControllerAnimated(true)
//        } 
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
