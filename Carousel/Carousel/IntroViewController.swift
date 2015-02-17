//
//  IntroViewController.swift
//  Carousel
//
//  Created by Brian Bailey on 2/12/15.
//  Copyright (c) 2015 i had that dream again. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    
    @IBOutlet weak var intro_tile1: UIImageView!
    @IBOutlet weak var intro_tile2: UIImageView!
    @IBOutlet weak var intro_tile3: UIImageView!
    @IBOutlet weak var intro_tile4: UIImageView!
    @IBOutlet weak var intro_tile5: UIImageView!
    @IBOutlet weak var intro_tile6: UIImageView!
    
    
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = introImage.image!.size
        scrollView.delegate = self
        
        scrollView.sendSubviewToBack(introImage)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = Float(scrollView.contentOffset.y)
        
        // prints changing content offset on scroll
        println("content offset \(scrollView.contentOffset.y)")
        
        
        // tile 1
        // tx = translation in x
        var tx = convertValue(offset, 0, 568, -30, 0)
        // ty = translation in y
        var ty = convertValue(offset, 0, 568, -285, 0)
        var scale = convertValue(offset, 0, 568, 1, 1)
        var rotation = convertValue(offset, 0, 568, -10, 0)
        
        intro_tile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        intro_tile1.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale), CGFloat(scale))
        intro_tile1.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
//        var farenheit = convertValue(25, 0, 100, 32, 212)
//        println("F \(farenheit)")
//        
//        var celcius = convertValue(212, 32, 212, 0, 100)
//        println("C \(celcius)")
        
        // tile 2
        var tx2 = convertValue(offset, 0, 568, 75, 0)
        var ty2 = convertValue(offset, 0, 568, -66, 0)
        var scale2 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation2 = convertValue(offset, 0, 568, -10, 0)
        
        intro_tile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        intro_tile2.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale2), CGFloat(scale2))
        intro_tile2.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        // tile 3
        var tx3 = convertValue(offset, 0, 568, 10, 0)
        var ty3 = convertValue(offset, 0, 568, -415, 0)
        var scale3 = convertValue(offset, 0, 568, 1.6, 1)
        var rotation3 = convertValue(offset, 0, 568, 10, 0)
        
        intro_tile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        intro_tile3.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale3), CGFloat(scale3))
        intro_tile3.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation3) * M_PI / 180))

        // tile 4
        var tx4 = convertValue(offset, 0, 568, -66, 0)
        var ty4 = convertValue(offset, 0, 568, -408, 0)
        var scale4 = convertValue(offset, 0, 568, 1.7, 1)
        var rotation4 = convertValue(offset, 0, 568, 10, 0)
        
        intro_tile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        intro_tile4.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale4), CGFloat(scale4))
        intro_tile4.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        // tile 5
        var tx5 = convertValue(offset, 0, 568, -200, 0)
        var ty5 = convertValue(offset, 0, 568, -480, 0)
        var scale5 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation5 = convertValue(offset, 0, 568, 10, 0)
        
        intro_tile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        intro_tile5.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale5), CGFloat(scale5))
        intro_tile5.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        // tile 6
        var tx6 = convertValue(offset, 0, 568, -15, 0)
        var ty6 = convertValue(offset, 0, 568, -500, 0)
        var scale6 = convertValue(offset, 0, 568, 1.65, 1)
        var rotation6 = convertValue(offset, 0, 568, -10, 0)
        
        intro_tile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        intro_tile6.transform = CGAffineTransformScale(intro_tile1.transform, CGFloat(scale6), CGFloat(scale6))
        intro_tile6.transform = CGAffineTransformRotate(intro_tile1.transform, CGFloat(Double(rotation6) * M_PI / 180))
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
