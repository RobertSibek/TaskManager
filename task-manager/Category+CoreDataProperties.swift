//
//  Category+CoreDataProperties.swift
//  task-manager
//
//  Created by Robert Sibek on 03.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Category {

    @NSManaged var color: NSNumber?
    @NSManaged var name: String?

}
