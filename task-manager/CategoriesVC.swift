//
//  CategoriesVC.swift
//  task-manager
//
//  Created by Robert Sibek on 03.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit
import CoreData

extension UINavigationController {
    
    func previousViewController() -> UIViewController? {
        guard viewControllers.count > 1 else {
            return nil
        }
        return viewControllers[viewControllers.count - 2]
    }
    
}

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var categories = [Category]()
    var comingFromNewTask = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    override func viewDidAppear(animated: Bool) {
        if appState.creatingTask {
            print("WE ARE CREATING NEW TASK")
            appState.setCreatingStatus(false)
        } else {
            print("WE ARE COMING FROM SETTINGS")
        }
        fetchAndSetResults()
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Category")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.categories = results as! [Category]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("CategoryCell") as? CategoryCell {
            let cat = categories[indexPath.row]
            cell.configureCell(cat)
            return cell
        } else {
            return CategoryCell()
        }
     
    }
    
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    
    

}
