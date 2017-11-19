//
//  FoodListViewController.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class FoodListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var payButton: UIButton!
    
    @IBOutlet weak var categoryNameLabel: UILabel!
    
    // for sliding view counter..
    
    @IBOutlet weak var itemCountlabel: UILabel!
    
    @IBOutlet weak var itemCountStepper: UIStepper!
    
    //for the item counter view constraint..
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var category = ""
    var totalPrice: Double = 0.00
    var data = MenuData()
    var food = [Food]()
    
    override func viewDidLoad() {
        
        tableView.backgroundColor = .clear
        super.viewDidLoad()
        itemCountlabel.text = "0"
        
        categoryNameLabel.text = category
        
        payButton.layer.cornerRadius = 25
        payButton.layer.masksToBounds = true
        
        totalPriceLabel.text = "\(totalPrice)"
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return food.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!
        FoodTableViewCell
        
        // Configure the cell...
        
        //let appetizerItems = data.appetizers[indexPath.row]
       // let chickenItems = data.chicken[indexPath.row]
        //let seafoodItems = data.Seafood[indexPath.row]
        //let kidAndSeniorItems = data.kidsAndSeiniors[indexPath.row]
        //let sideAndDessertItems = data.sidesAndDesserts[indexPath.row]
        //let drinkItems = data.drinks[indexPath.row]
        
        let foodItems = food[indexPath.row]
        
        cell.getFood(food: foodItems)
        cell.backgroundColor = .clear

        return cell
    }
    
    
    var cell = FoodTableViewCell()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // this reveals the view counter...
        leadingConstraint.constant = 0
        ammount = 0
        itemCountStepper.value = 0.0
        
        
        //totalPrice += food[indexPath.row].price
        //totalPriceLabel.text = "\(totalPrice)"
        //print(food[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        
        
        
        //totalPrice -= food[indexPath.row].price
        //totalPriceLabel.text = "\(totalPrice)"
    }

    
    @IBAction func reviewOrderBtn(_ sender: Any) {
        performSegue(withIdentifier: "ShowCheckoutSegue", sender: self)
        
        if let indexPath = self.tableView.indexPathsForSelectedRows{
            
            for index in indexPath {
                let items = food[index.row]
                print(items)
            }
        }
    }
    
    
    // for the stepper counter...
    var ammount = 0
    var totalAmmount = 0.0
    
    @IBAction func itemCountStepper(_ sender: UIStepper) {
        if let indexPath = tableView.indexPathForSelectedRow{
            // this is the cell qty count
        
        ammount = Int(sender.value)
        print(ammount)
        itemCountlabel.text = "\(Int(sender.value).description)"
            
        totalAmmount = (food[indexPath.row].price *  Double(ammount))
            print(totalAmmount)
        
            food[indexPath.row].qty = ammount
            print( food[indexPath.row].qty)
        }
    }
    
    @IBAction func finishedCountingButton(_ sender: Any) {
        //this sends the view back to being hidden
        
        leadingConstraint.constant = -400
        itemCountlabel.text = "0"
       totalPrice += totalAmmount
        totalPriceLabel.text = "\(totalPrice)"
        if ammount > 0 {
//            tableView.reloadData()
        }
        
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCheckoutSegue"{
          
            if let indexPath = self.tableView.indexPathsForSelectedRows{
                let destinationController = segue.destination as!
                ReviewOrderViewController
              
                for index in indexPath{
                    let items = self.food[index.row]
                    
            destinationController.food.append(items)
                
            destinationController.totalPrice = "\(totalPrice)"
                
                print(totalPrice)
                }
                
            }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
    }
}
