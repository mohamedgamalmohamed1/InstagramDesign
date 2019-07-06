//
//  instagramCell.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/4/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class instagramCell: UITableViewCell {
    
    @IBOutlet weak var toolsView: UIView!
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var imgContenet: UIImageView!
    @IBOutlet weak var imgViewProfile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgViewProfile.layer.borderWidth = 1
        imgViewProfile.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        imgViewProfile.layer.cornerRadius = 50/2
    }
    

  

}
