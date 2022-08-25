import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var onePieceImage: UIImageView!
    
    @IBOutlet weak var luffyOrHiyoriSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(switchImages))
        imageView.addGestureRecognizer(gesture)
        
        
    }

    
    @IBAction func SwitchScreenButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "goToBarScreen", sender: self)
    }
    
    @objc func switchImages() {
        
        if imageView.image == UIImage(named: "roger") {
            imageView.image = UIImage(named: "yamato")
            print("image was set to yamato")
        } else {
            imageView.image = UIImage(named: "roger")
            print("image was set to roger")
    }
}
    
    
    @IBAction func indexChangedForLuffyOrHiyori(_ sender: Any) {
        
        switch luffyOrHiyoriSwitch.selectedSegmentIndex {
            
        case 0:
            onePieceImage.image = UIImage(named: "luffy")
            
        case 1:
            onePieceImage.image = UIImage(named: "hiyori")
            
        default:
            break
        }
    }
    
    
    
    
    
    
    
}
