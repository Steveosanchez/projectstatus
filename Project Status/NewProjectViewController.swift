//
//  NewProjectViewController.swift
//  Project Status
//
//  Created by Sanchez, Steven on 4/24/18.
//  Copyright © 2018 Sanchez, Steven. All rights reserved.
//

import Cocoa

class NewProjectViewController: NSViewController {

    var project: Project?
    
    @objc dynamic var managedObjectContext = (NSApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var nameTextField: NSTextField!
    
    @IBAction func textFieldAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.projectName = nameTextField.stringValue
    }
    @IBOutlet weak var statusTextField: NSTextField!
    
    @IBOutlet weak var issuesTextField: NSTextField!
    
    @IBOutlet weak var numberOfPersonelAssignedTextField: NSTextField!
    
    @IBOutlet weak var originalPersonelOutline: NSTextField!
    
    @IBOutlet weak var nextCheckInDatePicker: NSDatePicker!
    
    @IBOutlet weak var lastCheckInDatePicker: NSDatePicker!
    
    @IBOutlet weak var numberOfSprintsTextField: NSTextField!
    
    @IBOutlet weak var currentSprintPointsTextField: NSTextField!
    
    @IBOutlet weak var ownersTextField: NSTextField!
    
    @IBAction func statusTextFieldAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.currentStatus = statusTextField.stringValue
    }
    
    @IBAction func issuesTextFieldAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.currentIssues = issuesTextField.stringValue
    }
    
    
    
    @IBAction func numberOfAssignedPersonelAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.actualNumberAssigned = numberOfPersonelAssignedTextField.stringValue
    }
    
    @IBAction func originalPersonelAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.specifiedPersonel = originalPersonelOutline.stringValue
    }
    
    @IBAction func numberOfSprintSpansAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.numberOfSprints = numberOfSprintsTextField.stringValue
    }
    
    @IBAction func currentSprintPointsAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.currentSprintPoints = Int64(currentSprintPointsTextField.intValue)
    }
    
    
    @IBAction func ownersAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        
        prj.owners = ownersTextField.stringValue
    }
    
    
    @IBAction func selectedSave(_ sender: Any) {
        do {
            try managedObjectContext.save()
        } catch {
            print("\(error)")
        }
        self.dismiss(nil)
    }
    
    @IBAction func nextCheckInDateAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        
        prj.nextCheckIn = nextCheckInDatePicker.dateValue as NSDate
    }
    
    @IBAction func lastCheckInDateAction(_ sender: Any) {
        guard let prj = project else {
            return
        }
        prj.lastUICheck = lastCheckInDatePicker.dateValue as NSDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        project = NSEntityDescription.insertNewObject(forEntityName: "Project", into: managedObjectContext) as? Project
        
        let notification = NSUserNotification.init()
        notification.title = "Testing"
        notification.informativeText = "What does this do?"
        notification.deliveryDate = Date()
        
        let noteCenter = NSUserNotificationCenter.default
        noteCenter.scheduleNotification(notification)
        
    }
    
}
