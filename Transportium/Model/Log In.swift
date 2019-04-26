
import UIKit
import Firebase
import FirebaseUI
import FirebaseDatabase




class Log_In: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    var ref: DatabaseReference!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
    }
    
   
    @IBAction func Log(_ sender: Any) {
        
       let newViewController = storyboard?.instantiateViewController(withIdentifier: "createProfile") as! CreateProfile
        
        
        let emailLog = self.email.text
        
        let passwordLog = self.password.text
        
        
        
        
        
        Auth.auth().signIn(withEmail: emailLog!, password: passwordLog!) { (user, error) in
            
            
            
            if let error = error {
                
                print(error.localizedDescription)
                
            }
                
            else if let user = user {
                
                print("Log Successfully.\(user)")
                
                
                self.present(newViewController, animated: true, completion: nil)
            }
            
        }
        
        
        
        let userID = Auth.auth().currentUser?.uid
        
        print(userID)
        
        self.ref.child("usuarios").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            
            // Get user value
            
            let value = snapshot.value as? NSDictionary
            
            let username = value?["email"] as? String ?? ""
            
            print("usuario: \(username)")
            
            //Creamos el objeto usuario
            
            //let user = User(username: username)
            
            
            
            // ...
            
        }) { (error) in
            
            print(error.localizedDescription)
            
        }
        
        
        
        
        //        if Auth.auth().currentUser != nil {
        
        //            let user = Auth.auth().currentUser
        
        //
        
        //            if let user = user {
        
        //            let id = user.uid
        
        
        
        //            }
        
        //        } else {
        
        //            print("Error")
        
        //        }
        
    }
    
    
    
    
    
    
        
    
    //  let newViewController = storyboard?.instantiateViewController(withIdentifier: "createProfile") as! CreateProfile
    //self.present(newViewController, animated: true, completion: nil)
    
}
    
    




    

