
import UIKit
import FirebaseUI

class Log_In: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    @IBAction func Log(_ sender: Any) {
        print("TUPUTAMADRE")
        let emailLog = self.email.text
        let passwordLog = self.password.text
        
        
        Auth.auth().signIn(withEmail: emailLog!, password: passwordLog!) { (user, error) in
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let user = user {
                print("Log Successfully.")
            }
        }

    
}
}
    
    




    

