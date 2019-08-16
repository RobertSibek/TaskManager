//
//  State.swift
//  task-manager
//
//  Created by Robert Sibek on 05.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import Foundation

class AppState {
    private var _creatingTask: Bool!
    
    var creatingTask: Bool {
            return _creatingTask
    }
    
    
    init() {
        _creatingTask = false
    }
    
    
    func setCreatingStatus(status: Bool) {
        _creatingTask = status
    }
    
}

var appState = AppState()


