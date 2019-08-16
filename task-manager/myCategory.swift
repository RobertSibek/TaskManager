//
//  Category.swift
//  task-manager
//
//  Created by siboch on 8/2/16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit

class Category {
    private var _name: String!
    private var _color: UIColor!
    
    var color: UIColor {
            return _color
    }
    
    var name: String {
        return _name
    }
    
    init(name: String, color: UIColor) {
        _name = name
        _color = color
    }
    
    
}
