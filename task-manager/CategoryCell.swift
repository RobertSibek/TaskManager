//
//  CategoryCell.swift
//  task-manager
//
//  Created by Robert Sibek on 03.08.16.
//  Copyright © 2016 siboch. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(category: Category) {
        categoryName.text = category.name
        let colId = category.color as? Int  
        categoryColor.backgroundColor =  colors[colId!]
    }

}
