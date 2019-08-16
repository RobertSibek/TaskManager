//
//  Variables.swift
//  task-manager
//
//  Created by Robert Sibek on 03.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import Foundation
import UIKit

class Colors {
 
    private var _colors = [UIColor.blackColor(),
               UIColor.blueColor(),
               UIColor.redColor(),
               UIColor.greenColor(),
               UIColor.yellowColor(),
               UIColor.brownColor(),
               UIColor.cyanColor(),
               UIColor.magentaColor(),
               UIColor.orangeColor(),
               UIColor.purpleColor()
    ]
    
    func getColor(colId: Int) -> UIColor {
        return _colors[colId]
    }
    

}
