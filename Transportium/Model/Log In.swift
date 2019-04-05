
import UIKit
import FirebaseUI

class Log_In: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    
    @IBAction func Login(_ sender: Any) {
        
      /*  let correo = email.text
        let contraseña = password.text
        
        
        if correo == "" || contraseña == "" {
            let alertController = UIAlertController(title: "Error", message: "Por favor introduce email y contraseña", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            //2.
            Auth.auth().signIn(withEmail: correo!, password: contraseña!) { (user, error) in
                //3.
                if error == nil {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                    
                } else {
                    //4.
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        */
        let correo = email.text
        let contraseña = password.text
        
        Auth.auth().signIn(withEmail: correo!, password: contraseña!) { (result, error) in
        
            
            
            if let _eror = error{
                print("Login incorrecto")
                print(_eror)
                
            }else{
                
                
                if let _res = result{
                    print("Login correcto")
                    print(_res)
                }
            }
        }
        
        
        
        
        /* authUI?.delegate = self as? FUIAuthDelegate
         
         let loginViewController = authUI!.authViewController()
         
         present(loginViewController, animated: true, completion: nil)
         
         */
        
    }
    


    
}
    
    




    

