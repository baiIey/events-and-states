//
//  GetStartedViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/15/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    @IBOutlet weak var viewButton: UIButton!
    @IBOutlet weak var timeWheelButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
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
    
    @IBAction func xButtonDidPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func viewButtonDidPress(sender: AnyObject) {
        viewButton.selected = !viewButton.selected
    }
    
    @IBAction func timeWheelButtonDidPress(sender: AnyObject) {
        timeWheelButton.selected = !timeWheelButton.selected
    }
    
    @IBAction func shareButtonDidPress(sender: AnyObject) {
        shareButton.selected = !shareButton.selected
    }
}
