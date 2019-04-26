

import UIKit

class CreateProfile: UIViewController {
    
    
    @IBOutlet weak var imgBgGrey: UIImageView!
    
    @IBOutlet weak var imgBgWhite: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        imgBgGrey.layer.cornerRadius = 30
        imgBgWhite.layer.cornerRadius = 30
     
    }
    


}
