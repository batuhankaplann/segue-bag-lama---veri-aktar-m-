

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var GözükenLabel: UILabel!
    
    var yeni = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        GözükenLabel.text! = yeni
        
    }
    

   

}
