//
//  GetStartedViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/15/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {

    @IBOutlet weak var firstCheck: UIImageView!
    @IBOutlet weak var secondCheck: UIImageView!
    @IBOutlet weak var thirdCheck: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func xButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func firstButton(sender: AnyObject) {
    }
    
    @IBAction func secondButton(sender: AnyObject) {
    }
    
    
    @IBAction func thirdButton(sender: AnyObject) {
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
