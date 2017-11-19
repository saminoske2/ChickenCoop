//
//  FoodTableViewCell.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit


class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var qtyLabel: UILabel!
    
    @IBOutlet weak var seperator: UILabel!
    
    // pulls from the foodlist qty value
    var qty = 0
   // var selectedItem = Bool()
    
    func getFood(food: Food){
        self.productLabel.text = food.product
        self.priceLabel.text = "\(food.price)"
        self.qtyLabel.text = "\(food.qty)"
        //self.selectedItem = food.selectedItem
    /*  if productLabel.text == ""{
        self.qtyLabel.text = ""
        }else{
            self.qtyLabel.text = "|"
        }
 */
    }
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
}
