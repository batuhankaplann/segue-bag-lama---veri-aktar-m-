
import UIKit

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var AlınanTextField: UITextField!
    
    var deger = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(artıTuşu))
        
        
        
        
        let dokunma = UITapGestureRecognizer(target: self , action: #selector(klavyeKapansın))
       
        view.addGestureRecognizer(dokunma)
        
        
        
        
    }
    
    @objc func artıTuşu () {
        
       performSegue(withIdentifier: "toVCto", sender: nil)
        
    }
    
    
    
@objc func klavyeKapansın () {
        
        view.endEditing(true)
        
    }
    
    
    
    

    @IBAction func KontrolEt(_ sender: Any) {
        
        deger = AlınanTextField.text!
        
        
        performSegue(withIdentifier: "toVCto", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        if segue.identifier == "toVCto" {
        
        let geçis = segue.destination as! SecondViewController
        
        geçis.yeni = deger
    }
    
    
    
}


}
