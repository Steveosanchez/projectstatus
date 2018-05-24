//
//  ViewController.swift
//  Project Status
//
//  Created by Sanchez, Steven on 4/3/18.
//  Copyright © 2018 Sanchez, Steven. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var tableData: NSArrayController!
    
    @IBOutlet weak var tableView: NSTableView!
    
    
    @objc dynamic var managedObjectContext = (NSApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(didEndEditign), name: NSControl.textDidEndEditingNotification, object: nil)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @objc func didEndEditign() {
        do {
            try self.managedObjectContext.save()
        } catch {
            print("\(error)")
        }
    }
}


