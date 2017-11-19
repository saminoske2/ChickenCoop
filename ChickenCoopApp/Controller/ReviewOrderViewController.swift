//
//  ReviewOrderViewController.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ReviewOrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBOutlet weak var applyCuponBtn: UIButton!
    
    @IBOutlet weak var updateCartBtn: UIButton!
    
    @IBOutlet weak var payBtn: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var food: [Food] = []

    var productName = ""
    var productPrice = ""
    var productQty = ""
    var totalPrice: String = ""
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (food.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!
        ReviewOrderTableViewCell
        
       let reviewItems = food[indexPath.row]
        
        cell.getOrder(order: reviewItems)
        cell.backgroundColor = .clear
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .clear
        
        applyCuponBtn.layer.cornerRadius = 25
        applyCuponBtn.layer.masksToBounds = true
        
        updateCartBtn.layer.cornerRadius = 25
        updateCartBtn.layer.masksToBounds = true
        
        payBtn.layer.cornerRadius = 25
        payBtn.layer.masksToBounds = true
        
        
        totalPriceLabel.text = totalPrice
        print(food)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func payBtn(_ sender: Any) {
        performSegue(withIdentifier: "ShowFinishedOrderSegue", sender: self)
        
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFinishedOrderSegue" {
            let destinationController = segue.destination as!
            ConfirmationPageViewController
            destinationController.finalText = "Thank you for your Purchase of $\(totalPrice)! Your order pickup will be ready in aproximately 10 mins. Have a WONDERFUL DAY!"
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
        else{
            return
        }
    }

}
