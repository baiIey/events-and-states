//
//  ViewController.swift
//  week3animation
//
//  Created by Brian Bailey on 2/16/15.
//  Copyright (c) 2015 nevver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bikerImageView: UIImageView!
    
    var scale: CGFloat! = 1
    var rotate: CGFloat! = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func idTapBiker(sender: AnyObject) {
        var alertView = UIAlertView(title: "YO!", message: "Who's tapping Mr T!?", delegate: nil, cancelButtonTitle: "OK")
        alertView.show()
    }
    
    @IBAction func didRotateBiker(sender: UIRotationGestureRecognizer) {
        rotate = sender.rotation
        bikerImageView.transform = CGAffineTransformRotate(bikerImageView.transform, rotate)
    }
    
    @IBAction func didPanBiker(sender: UIPanGestureRecognizer) {
        // three different things the pan gesture can do
        var location = sender.locationInView(view)
        var translation = sender.translationInView(view)
        var velocity = sender.velocityInView(view)
        // using center and location is the simplest way to move something
        bikerImageView.center = location
        
        if(sender.state == UIGestureRecognizerState.Began){
            // started to pan
            bikerImageView.transform = CGAffineTransformMakeScale(1.5, 1.5)
            // println("Pan started")
        } else if (sender.state == UIGestureRecognizerState.Changed) {
        } else if (sender.state == UIGestureRecognizerState.Ended){
            // ended pan
            // println("Pan ended")
            bikerImageView.transform = CGAffineTransformMakeScale(1, 1)
        }
        
    }
    
    @IBAction func didPressReset(sender: AnyObject) {
        scale = 1
        rotate = 0
        bikerImageView.transform = CGAffineTransformIdentity
        // bikerImageView.center = originalCenter
    }
    
//    func tranformBiker {
//        var scale = sender.scale
//        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
//        var rotateTransform = CGAffineTransformMakeRotation(rotate)
//        var concatTransform = CGAffineTransformConcat(scaleTransform, rotateTransform)
//        bikerImageView.transform = concatTransform
//    }
    
    @IBAction func didPinch(sender: UIPinchGestureRecognizer) {
        // when dragging these over, make sure to change the type from object
        var scale = sender.scale
        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
        var rotateTransform = CGAffineTransformMakeRotation(rotate)
        var concatTransform = CGAffineTransformConcat(scaleTransform, rotateTransform)
        bikerImageView.transform = concatTransform
    }

    @IBAction func didPressGoButton(sender: AnyObject) {
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 40, options: nil, animations: { () -> Void in
            // Move the biker down and scale it bigger
            self.bikerImageView.center.y = 400
            self.bikerImageView.alpha = 1.0
            self.bikerImageView.transform = CGAffineTransformMakeScale(3, 3)
            }) { (finished: Bool) -> Void in
                // Whenever creating a rotate var you need to make sure you multiple it by M_PI/180 to get the proper degrees
                var rotate = CGFloat(-10 * M_PI / 180)
                // Here are combining the initial scale and adding our rotate
                self.bikerImageView.transform = CGAffineTransformRotate(self.bikerImageView.transform, rotate)
                UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.Autoreverse, animations: { () -> Void in
                    var rotate = CGFloat (20 * M_PI/180)
                    self.bikerImageView.transform = CGAffineTransformRotate(self.bikerImageView.transform, rotate)
            }) { (Bool) -> Void in
                //
        }
    
    
      }

        
        
    }
}
