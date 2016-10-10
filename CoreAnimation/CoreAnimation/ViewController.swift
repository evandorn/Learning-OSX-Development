//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Evan Dorn on 10/8/16.
//  Copyright © 2016 evandorn. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var transformLayer: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.wantsLayer = true
        transformLayer = CALayer()
        transformLayer.frame = view.bounds.insetBy(dx: 50, dy: 50)
        transformLayer.backgroundColor = NSColor.redColor().CGColor
        view.layer?.addSublayer(transformLayer)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func leftButtonClicked(sender: AnyObject) {
        setAngle(30)
        print("left button clicked")
    }

    @IBAction func rightButtonClicked(sender: AnyObject) {
        setAngle(-30)
        print("right button clicked")
    }
    
    // Calculate angle of rotation
    func setAngle(degrees: CGFloat) {
        let radians = CGFloat(M_PI) * degrees / 180.0
        var transform = CATransform3DIdentity
        transform.m34 = 1 / -250
        transform = CATransform3DRotate(transform, radians, 0, 1, 0)
        transformLayer.transform = transform
    }
}

 