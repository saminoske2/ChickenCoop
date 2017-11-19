//
//  FoodCategoryTableViewController.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class FoodCategoryTableViewController: UITableViewController {

    var data = MenuData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.FoodMenuItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)as?
        foodCategoryTableViewCell

        let category = data.FoodMenuItems[indexPath.row]
        // Configure the cell...

        cell?.getCategories(category: category)
        
        return cell!
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProductsSegue"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as!
                FoodListViewController
                
                switch data.FoodMenuItems[indexPath.row].categoryName{
                case "Appetizers" :
                    destinationController.food = data.appetizers
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                    case "Chicken" :
                    destinationController.food = data.chicken
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                    case "Seafood" :
                    destinationController.food = data.Seafood
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                    case "Kids&Seniors" :
                    destinationController.food = data.kidsAndSeiniors
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                    case "Sides&Desserts" :
                    destinationController.food = data.sidesAndDesserts
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                    case "Drinks" :
                    destinationController.food = data.drinks
                    destinationController.category = data.FoodMenuItems[indexPath.row].categoryName
                default:
                    return
                    destinationController.food = data.drinks
                }
                
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
