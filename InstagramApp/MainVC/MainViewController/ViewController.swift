//
//  ViewController.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/3/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var carsPics : [UIImage] = [ UIImage(named: "car3")! , UIImage(named: "MR1")! , UIImage(named: "MR2")! , UIImage(named: "MR3")! , UIImage(named: "MR4")!]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}


extension ViewController {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesCollectionView", for: indexPath) as! StoriesCollectionView
             return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "instagramCell", for: indexPath) as! InstagramCell
            cell.imgContenet.image = carsPics[indexPath.row - 1]
            

             return cell
        }
        //            if (indexPath.row == 2){
        //                cell.imgContenet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //            }
        //            else if (indexPath.row == 3){
        //                cell.imgContenet.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        //            }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsPics.count + 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0 :
            return 110
    
        default:
            return tableView.frame.height - 110
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier:"instagramCell") as! InstagramCell

        print("It's Your Car")
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle:   UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! InstagramCell
        if (editingStyle == .delete) {
            self.carsPics.remove(at: indexPath.row - 1)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .middle)
            tableView.endUpdates()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: true)
        }
    }
}


    
    

