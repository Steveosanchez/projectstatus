//
//  WindowController.swift
//  Project Status
//
//  Created by Sanchez, Steven on 4/11/18.
//  Copyright © 2018 Sanchez, Steven. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

    @IBAction func selectedAdd(_ sender: Any) {
        
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        print("\(String(describing: segue.identifier))")
    }
}
