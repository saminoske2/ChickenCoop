//
//  ConfirmationPageViewController.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ConfirmationPageViewController: UIViewController {
    
    @IBOutlet weak var finalNoticeLabel: UILabel!
    
   var finalText = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        finalNoticeLabel.text = finalText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func mainMenuBtn(_ sender: Any) {
        performSegue(withIdentifier: "ShowMainMenuSegue", sender: self)
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
