//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/12/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var horzScrollView: UIScrollView!
    @IBOutlet weak var welcome1Image: UIImageView!
    @IBOutlet weak var welcome2Image: UIImageView!
    @IBOutlet weak var welcome3Image: UIImageView!
    @IBOutlet weak var welcome4Image: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backUpPhotosButton: UIButton!
    @IBOutlet weak var buttonContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horzScrollView.delegate = self

        // Do any additional setup after loading the view.
        horzScrollView.contentSize = CGSize(width: 1280, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if (page == 3){
            // println("on page 4")
            UIView.animateWithDuration(0.7, animations: { () -> Void in
                self.pageControl.alpha = 0
                self.buttonContainer.alpha = 1
            })
            
            
        } else {
            //println("not on page 4")
            UIView.animateWithDuration(0.7, animations: { () -> Void in
                self.pageControl.alpha = 1
                self.buttonContainer.alpha = 0
            })
        }
        
    }

    @IBAction func backUpPhotosButtonDidPress(sender: AnyObject) {
        backUpPhotosButton.selected = !backUpPhotosButton.selected
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
