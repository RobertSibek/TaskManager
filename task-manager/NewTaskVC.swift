//
//  NewTaskVC.swift
//  task-manager
//
//  Created by Robert Sibek on 05.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit

class NewTaskVC: UIViewController {
    
    @IBOutlet weak var deadLineTxt: UITextField!
    @IBOutlet weak var reminderTxt: UITextField!
    @IBOutlet weak var categoryTxt: UITextField!
    let datePickerView:UIDatePicker = UIDatePicker()
    let dateFormatter = NSDateFormatter()
    var pickingDeadline:Bool?
    
    override func viewDidLoad() {
        datePickerView.datePickerMode = UIDatePickerMode.Date
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
    }
    
    override func viewDidAppear(animated: Bool) {
    }
    
    @IBAction func deadLineEditing(sender: UITextField) {
        pickingDeadline = true
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(NewTaskVC.datePickerValueChanged), forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    
    func datePickerValueChanged(sender:UIDatePicker) {
        if pickingDeadline != nil {
            if pickingDeadline! {
                deadLineTxt.text = dateFormatter.stringFromDate(sender.date)
            } else {
                reminderTxt.text = dateFormatter.stringFromDate(sender.date)
            }
        }
    }
    
    
    @IBAction func reminderEditing(sender: UITextField) {
        pickingDeadline = false
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(NewTaskVC.datePickerValueChanged), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    @IBAction func onCategoryPressed(sender: AnyObject) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CategoriesSB")
        appState.setCreatingStatus(true)
        self.presentViewController(viewController, animated: true, completion: nil)
        
    }

}
