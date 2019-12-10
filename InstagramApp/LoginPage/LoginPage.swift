//
//  LoginPage.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/7/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit


class LoginPage: UIViewController {
    
    
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var loginBU: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBU.layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        loginBU.layer.borderWidth = 1
        loginBU.layer.cornerRadius = 4
        loginBU.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

    }
    
    @IBAction func loginButton(_ sender: Any) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! ViewController
        if (txtUsername.text == "Mohamed") && (txtPassword.text == "123"){
            navigationController?.present(view, animated: true, completion: nil)
        } else{
            print("ERROR")
        }
        }
    }
    


