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
import FirebaseDatabase



class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repPassword: UITextField!
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var lbl: UILabel!

    var emailValue:String = ""
    var passValue:String = ""
    var repPassValue:String = ""
    
    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
       
        
        chargeAppearance()
    }
    
    func chargeAppearance(){
       self.email.layer.cornerRadius = 30.0
        
        
    }
    
    @IBAction func registrate(_ sender: Any) {
        emailValue = email.text!
        passValue = password.text!
        repPassValue = repPassword.text!
        
        if confirmPass(){
            let stringUser =  ["email": self.emailValue, "password": self.passValue]
            Auth.auth().createUser(withEmail: emailValue, password: passValue){ (user, error) in
                self.ref.child("usuarios").childByAutoId().setValue(stringUser)
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let user = user {
                print("Sign Up Successfully.")
            }
        }
                
                
             }
            
            }
     
        
    
    
    func confirmPass() -> Bool {
        if(passValue != repPassValue){
            let alert = UIAlertController(title: "Error al registrar", message: "Las contraseñas no coinciden", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            self.present(alert, animated: true)
            print("\(passValue) y \(repPassValue)")
            btnRegister.isSelected = false
            return false
        }else if (passValue.isEmpty || repPassValue.isEmpty || emailValue.isEmpty){
            let alert = UIAlertController(title: "Tienes que llenar los campos", message: "No puedes dejar ningun campo vacio", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            self.present(alert, animated: true)
            print("\(passValue) y \(repPassValue)")
            btnRegister.isSelected = false
            return false
            
        }else{
            return true
        }
    }
    

}


