//
//  foodCategoryTableViewCell.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class foodCategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var foodCategoryImage: UIImageView!
    
    
    @IBOutlet weak var foodCategoryName: UILabel!
    
    func getCategories(category: FoodMenu){
        self.foodCategoryName.text = category.categoryName
        self.foodCategoryImage.image = UIImage(named: category.categoryImage)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    

}
