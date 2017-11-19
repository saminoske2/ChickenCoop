//
//  MenuCollectionViewCell.swift
//  ChickenCoopApp
//
//  Created by Quinton Quaye on 11/7/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var menuItemTitle: UILabel!
    @IBOutlet weak var menuItemImage: UIImageView!
    
    func getMenu(menu: MainMenu){
        self.menuItemTitle.text = menu.menuItemTitle
        self.menuItemImage.image = UIImage(named:menu.menuItemImage)
        
    }
    
    
}
