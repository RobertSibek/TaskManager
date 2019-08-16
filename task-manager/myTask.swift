//
//  Task.swift
//  task-manager
//
//  Created by siboch on 8/2/16.
//  Copyright © 2016 siboch. All rights reserved.
//

import Foundation

class Task {
    private var _id: Int
    private var _name: String
    private var _category: Int
    private var _deadline: NSDate
    private var _created: NSDate
    private var _reminder: NSDate?
    
    init(id: Int, name: String, category: Int, deadline: NSDate) {
        _id = id
        _name = name
        _category = category
        _deadline = deadline
        _created = NSDate()
       // _reminder =
    }
    
}
