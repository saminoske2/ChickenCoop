//
//  MenuData.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import Foundation
struct MenuData {
    //for the main menu
    var mainMenuItems: [MainMenu] = [
        MainMenu(menuItemTitle:"Specials", menuItemImage: "specials"),
        MainMenu(menuItemTitle:"Menu", menuItemImage: "Menu"),
        MainMenu(menuItemTitle:"Catering", menuItemImage: ""),
        MainMenu(menuItemTitle:"About Us", menuItemImage: ""),
        MainMenu(menuItemTitle:"Franchising", menuItemImage: ""),
        MainMenu(menuItemTitle:"Contact Us", menuItemImage: "")
    ]
    
    //for the categories..
    var FoodMenuItems: [FoodMenu] = [
        FoodMenu(categoryName: "Appetizers", categoryImage: "Ad 7"),
        FoodMenu(categoryName: "Chicken", categoryImage: "Ad 7"),
        FoodMenu(categoryName: "Seafood", categoryImage: "Ad 7"),
        FoodMenu(categoryName: "Kids&Seniors", categoryImage: "Ad 7"),
        FoodMenu(categoryName: "Sides&Desserts", categoryImage: "Ad 7"),
        FoodMenu(categoryName: "Drinks", categoryImage: "Ad 7")
    ]
    
    // for each selected category..
    var appetizers: [Food] = [
        Food(product: "Half lb Okra", price: Int(2.99), qty: 0),
        Food(product: "One lb Okra", price: Int(5.99), qty: 0),
        Food(product: "Mushrooms", price: Int(2.99), qty: 0),
        Food(product: "Onion Rings ", price: Int(2.99), qty: 0),
        Food(product: "Cheese Stixs (4)", price: Int(3.99), qty: 0),
        Food(product: "Cheese Stixs (12)", price: Int(7.99), qty: 0),
        Food(product: "Original wings (6)", price: Int(7.99), qty: 0),
        Food(product: "Original wings (12)", price: Int(13.99), qty: 0),
        Food(product: "Original wings (18)", price: Int(19.99), qty: 0),
        Food(product: "Original wings (24)", price: Int(26.99), qty: 0)
    ]
    
    var chicken: [Food] = [
        Food(product: "1PC Dinner", price: Int(6.99), qty: 0),
        Food(product: "2PC Dinner", price: Int(7.99), qty: 0),
        Food(product: "3PC Dinner", price: Int(8.99), qty: 0),
        Food(product: "4PC Dinner", price: Int(9.99), qty: 0),
        Food(product: "4PC Wing Dinner", price: Int(7.99), qty: 0),
        Food(product: "6PC Wing Dinner", price: Int(8.99), qty: 0),
        Food(product: "1PC Basket", price: Int(6.99), qty: 0),
        Food(product: "2PC Basket", price: Int(7.99), qty: 0),
        Food(product: "3PC Basket", price: Int(8.99), qty: 0),
        Food(product: "4PC Basket", price: Int(9.99), qty: 0),
        Food(product: "4PC Wing Basket", price: Int(7.99), qty: 0),
        Food(product: "6PC Wing Basket", price: Int(8.99), qty: 0),
        Food(product: "1 Wing", price: Int(1.99), qty: 0),
        Food(product: "1 leg", price: Int(1.99), qty: 0),
        Food(product: "1 thigh", price: Int(1.99), qty: 0),
        Food(product: "1 breast", price: Int(2.99), qty: 0),
        Food(product: "6PC Chicken Nugget", price: Int(2.99), qty: 0),
        Food(product: "10PC Chicken Nugget", price: Int(5.99), qty: 0),
        Food(product: "20PC Chicken Nugget", price: Int(9.99), qty: 0),
        Food(product: "6PC Chicken Nugget Basket", price: Int(3.99), qty: 0),
        Food(product: "6PC Chicken Nugget Dinner", price: Int(4.99), qty: 0),
        Food(product: "1PC Chicken Strip", price: Int(2.99), qty: 0),
        Food(product: "3PC Chicken Strip", price: Int(5.99), qty: 0),
        Food(product: "5PC Chicken Strip", price: Int(8.99), qty: 0),
        Food(product: "10PC Chicken Strip", price: Int(15.99), qty: 0),
        Food(product: "3PC Chicken Strip Basket", price: Int(6.99), qty: 0),
        Food(product: "3PC Chicken Strip Dinner", price: Int(7.99), qty: 0),
        Food(product: "6PC Hot Wing Basket", price: Int(7.99), qty: 0),
        Food(product: "6PC Hot Wing Dinner", price: Int(8.99), qty: 0),
        Food(product: "6PC Hot Wings Only", price: Int(6.99), qty: 0),
        Food(product: "12PC Hot Wings Only", price: Int(10.99), qty: 0),
        Food(product: "12PC Hot Wings Basket", price: Int(11.99), qty: 0),
        Food(product: "12PC Hot Wings Dinner", price: Int(12.99), qty: 0),
        
        Food(product: "8PC Basket", price: Int(13.99), qty: 0),
        Food(product: "10PC Basket Dark (5 legs / 5 thighs)", price: Int(12.99), qty: 0),
        Food(product: "12PC Basket", price: Int(17.99), qty: 0),
        Food(product: "16PC Basket", price: Int(21.99), qty: 0),
        Food(product: "20PC Basket", price: Int(25.99), qty: 0),
        Food(product: "20PC Basket(Frozen)", price: Int(10.99), qty: 0),
        Food(product: "24PC Basket", price: Int(29.99), qty: 0)
        
    ]
    
    var Seafood: [Food] = [
    Food(product: "", price: Int(0.00), qty: 0)
    ]
    
    var kidsAndSeiniors: [Food] = [
        Food(product: "", price: Int(0.00), qty: 0)
    ]
    
    var sidesAndDesserts: [Food] = [
    Food(product: "", price: Int(0.00), qty: 0)
    ]
    
    var drinks: [Food] = [
    Food(product: "", price: Int(0.00), qty: 0)
    ]
    
    
    
    
    
    
}
