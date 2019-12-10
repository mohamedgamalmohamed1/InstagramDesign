//
//  StoriesCell.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/7/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class StoriesCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewStories: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 40
        self.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
    }
    
}
