//
//  AppDelegate.swift
//  Hello World OS X
//
//  Created by Evan Dorn on 10/8/16.
//  Copyright © 2016 evandorn. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var helloLabel: NSTextField!
    @IBOutlet weak var helloButton: NSButton!
    
    // applicationDidFinishLaunching is the same as super viewDidLoat()
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        helloLabel.stringValue = "Hello World!"
        helloButton.title = "Change Text"
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func changeText(sender: AnyObject) {
        helloLabel.stringValue = "Hello World! - Text Changed"
    }

}

