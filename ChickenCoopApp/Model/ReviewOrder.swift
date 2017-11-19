//
//  ReviewOrder.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import Foundation

struct ReviewOrder {
    var product = ""
    var price = 0.00
    var qty = ""
    
    init(product:String, price: Int, qty: String ){
        self.product = product
        self.price = Double(price)
        self.qty = qty
        
    }
}
