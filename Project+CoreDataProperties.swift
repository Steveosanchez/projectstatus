//
//  Project+CoreDataProperties.swift
//  Project Status
//
//  Created by Sanchez, Steven on 5/7/18.
//  Copyright © 2018 Sanchez, Steven. All rights reserved.
//
//

import Foundation
import CoreData


extension Project {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Project> {
        return NSFetchRequest<Project>(entityName: "Project")
    }

    @NSManaged public var actualNumberAssigned: String?
    @NSManaged public var currentIssues: String?
    @NSManaged public var currentSprintPoints: Int64
    @NSManaged public var currentStatus: String?
    @NSManaged public var lastUICheck: NSDate?
    @NSManaged public var nextCheckIn: NSDate?
    @NSManaged public var numberOfSprints: String?
    @NSManaged public var owners: String?
    @NSManaged public var projectName: String?
    @NSManaged public var specifiedPersonel: String?

}
