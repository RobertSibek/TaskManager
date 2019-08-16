//
//  SettingsVC.swift
//  task-manager
//
//  Created by Robert Sibek on 05.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    override func viewDidLoad() {
        
    }

    @IBOutlet weak var sortOrderLbl: UILabel!
    
    

    @IBAction func onSortOrderPressed(sender: AnyObject) {
        if sortOrderLbl.text == "Date" {
            sortOrderLbl.text = "Name"
        } else {
            sortOrderLbl.text = "Date"
        }
        
    }
    
}
