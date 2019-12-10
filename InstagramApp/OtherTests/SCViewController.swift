//
//  SCViewController.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/13/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class SCViewController: UIViewController , UIScrollViewDelegate {

    @IBOutlet weak var SCView: UIScrollView!
    @IBOutlet weak var IVImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SCView.delegate = self

    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return IVImage
    }
    
    

}
