//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/12/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var horzScrollView: UIScrollView!
    @IBOutlet weak var welcome1Image: UIImageView!
    @IBOutlet weak var welcome2Image: UIImageView!
    @IBOutlet weak var welcome3Image: UIImageView!
    @IBOutlet weak var welcome4Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        horzScrollView.contentSize = CGSize(width: 1280, height: 568)
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
