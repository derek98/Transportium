//
//  ViewController.swift
//  Transportium
//
//  Created by Diego Cisneros on 15/3/19.
//  Copyright © 2019 FerranDiego. All rights reserved.
//º

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lblRegister: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        chargeAppearance()
    }
    
    func chargeAppearance(){
       email.layer.cornerRadius = 30.0
        lblRegister.layer.cornerRadius = 10.0
    }


}

