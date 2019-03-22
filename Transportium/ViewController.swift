//
//  ViewController.swift
//  Transportium
//
//  Created by Diego Cisneros on 15/3/19.
//  Copyright © 2019 FerranDiego. All rights reserved.
//º

import UIKit
import Firebase
import FirebaseUI



class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repPassword: UITextField!
    
    @IBOutlet weak var lbl: UILabel!

    var emailValue:String = ""
    var passValue:String = ""
    var repPassValue:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        emailValue = email.text!
        passValue = password.text!
        repPassValue = repPassword.text!
        
        chargeAppearance()
    }
    
    func chargeAppearance(){
       self.email.layer.cornerRadius = 30.0
        
        
    }
    
    @IBAction func registrate(_ sender: Any) {
        
      Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>, completion: <#T##AuthDataResultCallback?##AuthDataResultCallback?##(AuthDataResult?, Error?) -> Void#>)
        
    }
    
    func confirmPass() -> Bool {
        if(passValue != repPassValue){
            return false
        }else{
            return true
        }
    }
    

}


