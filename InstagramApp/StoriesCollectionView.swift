//
//  StoriesCollectionView.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/4/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class StoriesCollectionView: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
//    var size = CGSize(width: 80, height: 80)
    let cellSize = CGSize(width:80 , height:80)

    let storyImages:[UIImage] = [UIImage(named: "car3")! , UIImage(named: "car4")!, UIImage(named: "car5")! , UIImage(named: "car6")! , UIImage(named: "car7")! , UIImage(named: "car8")! , UIImage(named: "car9")! , UIImage(named: "car10")!]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal//.vertical
        layout.itemSize = cellSize
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.minimumLineSpacing = 40.0
        layout.minimumInteritemSpacing = 1.0
        collectionView.setCollectionViewLayout(layout, animated: true)

        collectionView.reloadData()

    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storiesCell", for: indexPath) as! storiesCell
        cell.imageViewStories.image = storyImages[indexPath.row]
    
        return cell
    }
  
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    

   

}
