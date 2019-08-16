//
//  ViewController.swift
//  task-manager
//
//  Created by siboch on 8/2/16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var col0: UIButton!
    @IBOutlet weak var col1: UIButton!
    @IBOutlet weak var col2: UIButton!
    @IBOutlet weak var col3: UIButton!
    @IBOutlet weak var col4: UIButton!
    @IBOutlet weak var col5: UIButton!
    @IBOutlet weak var col6: UIButton!
    @IBOutlet weak var col7: UIButton!
    @IBOutlet weak var col8: UIButton!
    @IBOutlet weak var col9: UIButton!
    @IBOutlet weak var categoryName: UITextField!
    
    var category = [Category]()
    var catCount : Int?
    var colId = 0
    var lastBtn: AnyObject!
    var colors = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createCategory(sender: AnyObject) {
        if let title = categoryName.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Category", inManagedObjectContext: context)!
            let category = Category(entity: entity, insertIntoManagedObjectContext: context)
            category.name = categoryName.text
            category.color = colId
            context.insertObject(category)
            
            do {
                try context.save()
            } catch {
                print("Could not save category")
            }
            
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func setColor(sender: AnyObject) {
        if lastBtn != nil {
            lastBtn.layer.borderWidth = 0
        }
        colId = sender.tag
        lastBtn = sender
        sender.layer.borderWidth = 3
        sender.layer.borderColor = UIColor.whiteColor().CGColor
    }
  

}

