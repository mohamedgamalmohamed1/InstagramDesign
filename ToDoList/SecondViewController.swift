//
//  SecondViewController.swift
//  ToDoList
//
//  Created by mohamed gamal mohamed on 5/25/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

protocol didSelectDismiss {
    func didSelected()
}

class SecondViewController: UIViewController {
    
    var delegateItem : didSelectDismiss!

    @IBOutlet weak var laToDoList: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Action(_ sender: Any) {
        if (laToDoList != nil ){
            list.append(laToDoList.text!)
            laToDoList.text = nil
        }
        
    }
        
    @IBAction func dismissButton(_ sender: Any) {
        guard case delegateItem.didSelected() else {
        let nav = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        present(nav, animated: true, completion: nil)
        }
        }
    
    }
    


