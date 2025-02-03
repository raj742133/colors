import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSWitch:UISwitch!
    
    @IBOutlet var redslider: UISlider!
    
    
    @IBOutlet weak var blueSWitch:UISwitch!
    
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var greenSWitch:UISwitch!
    @IBOutlet var greenslider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchtoggled(_ sender: UISwitch) {
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        if redSWitch.isOn {
            
            
            red = CGFloat(redslider.value)
        }
        if greenSWitch.isOn{
            green = CGFloat(greenslider.value)
        }
        if blueSWitch.isOn{
            blue = CGFloat(blueslider.value)
        }
        else{
            view.backgroundColor = .black
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        view.backgroundColor = color
    }
    
    
}

