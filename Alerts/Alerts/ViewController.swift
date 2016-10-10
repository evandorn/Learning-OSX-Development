//
//  ViewController.swift
//  Alerts
//
//  Created by Evan Dorn on 10/8/16.
//  Copyright © 2016 evandorn. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear() {
        alert()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    func alert() {
        let alert = NSAlert()
        alert.messageText = "Alert Message"
        alert.informativeText = "Detailed description of alert message"
        alert.addButtonWithTitle("Default")
        alert.addButtonWithTitle("Alternative")
        alert.addButtonWithTitle("Other")
        
        // alert.beginSheetModalForWindow is the same as having a switch statment
        // The window object is obtained from view.window!
        alert.beginSheetModalForWindow(view.window!) { (response) -> Void in
            print("The user selected \(response)")
        }
        
        // Long way of handling alerts
        /*
        let result = alert.runModal()                   // returns the result of the alert
        
        switch result {
        case NSAlertFirstButtonReturn:
            print("First button clicked")
            
        case NSAlertSecondButtonReturn:
            print("Second button clicked")
        case NSAlertThirdButtonReturn:
            print("Third button clicked")
        default:
            break
        }
         */
    }
}
