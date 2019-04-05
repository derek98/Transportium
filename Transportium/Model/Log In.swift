
import UIKit
import FirebaseUI

class Log_In: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    
    @IBAction func Login(_ sender: Any) {
        
        let correo = email.text
        let contraseña = password.text
        
        Auth.auth().signIn(withEmail: correo!, password: contraseña!) { (result, error) in
        
            
            
            if let _eror = error{
                print(_eror)
                
            }else{
                
                
                if let _res = result{
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
    
    




    

