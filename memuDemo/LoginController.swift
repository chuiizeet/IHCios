//
//  LoginController.swift
//  memuDemo
//
//  Created by imac on 23/05/18.
//  Copyright © 2018 Parth Changela. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }


    //Login
    @IBAction func loginBtn(_ sender: Any) {
        
        if((emailTextField.text?.contains("marian@edukt.com"))! && (passTextField.text?.contains("123456"))!)
        {
            NSLog("Hola Marian")
            performSegue(withIdentifier: "Welcome", sender: nil)
        }
        else
        {
            NSLog("Error")
        }
        
    }
    

}
