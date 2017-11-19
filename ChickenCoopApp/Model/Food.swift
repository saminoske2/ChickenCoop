//
//  Food.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import Foundation

struct Food {
    var product = ""
    var price = 0.00
    var qty = 0
   
    
    init(product:String, price: Int, qty: Int){
        self.product = product
        self.price = Double(price)
        self.qty = qty
        
        
    }
}
