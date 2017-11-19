//
//  ReviewOrderTableViewCell.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ReviewOrderTableViewCell: UITableViewCell {

    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var qtyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func getOrder(order: Food){
        self.productLabel.text = order.product
        self.priceLabel.text = "\(order.price)"
        self.qtyLabel.text = "\(order.qty)"
    }
}
