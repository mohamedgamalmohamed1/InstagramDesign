//
//  FirstViewController.swift
//  ToDoList
//
//  Created by mohamed gamal mohamed on 5/25/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit
var list = ["milk", "cheese" , "pizza" , "pepsi"]

class FirstViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
  
    
    @IBOutlet weak var myTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableview.reloadData()
        }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        myTableview.reloadData()
    }

}
extension FirstViewController: didSelectDismiss{
    func didSelected() {
         print("HeloOooooooooOoOooO")
    }
    
    
}

