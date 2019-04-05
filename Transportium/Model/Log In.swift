
import UIKit
import FirebaseUI

class Log_In: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    @IBAction func Log(_ sender: Any) {
        
        let emailLog = self.email.text
        let passwordLog = self.password.text
        
        
       
        let newViewController = storyboard?.instantiateViewController(withIdentifier: "createProfile") as! CreateProfile
        
        
        Auth.auth().signIn(withEmail: emailLog!, password: passwordLog!) { (user, error) in
            
            if ((emailLog?.isEmpty)! || (passwordLog?.isEmpty)!){
                let alert = UIAlertController(title: "Error", message: "Hay campos vacíos", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
            
            if let error = error {
                print(error.localizedDescription)
                let alert = UIAlertController(title: "Error", message: "Usuario o contraseña incorrecto", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
            else if let user = user {
                
                
                
                print("Log Successfully.")
                self.present(newViewController, animated: true, completion: nil)
            
            }
        }

    
}
}
    
    




    

