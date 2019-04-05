
import UIKit
import FirebaseUI

class Log_In: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func login(_ sender: Any) {
        
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else{
            //Log the error
            return
            
        }
        
        authUI?.delegate = self as? FUIAuthDelegate
        
        let loginViewController = authUI!.authViewController()
        
        present(loginViewController, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
}


extension ViewController:FUIAuthDelegate{
    
}
