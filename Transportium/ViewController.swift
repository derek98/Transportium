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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        chargeAppearance()
    }
    
    func chargeAppearance(){
       self.email.layer.cornerRadius = 30.0

        
    }

    

}

