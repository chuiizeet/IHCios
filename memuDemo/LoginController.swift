//
//  LoginController.swift
//  memuDemo
//
//  Created by imac on 23/05/18.
//  Copyright © 2018 Parth Changela. All rights reserved.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        emailTextField.resignFirstResponder()
        passTextField.resignFirstResponder()
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
            
            let alterView = UIAlertController(title: "Error", message: "El correo y la contraseña no son validas", preferredStyle: .alert)
            
            let okay = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            alterView.addAction(okay)
            
            present(alterView, animated: true, completion: nil)
        }
        
    }
    

}
