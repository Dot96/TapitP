

import UIKit

extension  UIButton {

         func shake() {
             let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
           animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
             animation.duration = 0.6
             animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
             layer.add(animation, forKey: "shake")
            
            
         }
    

     }

class ViewController: UIViewController {
    
   
    
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "\(counter)".uppercased()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Reset", style: .done, target: self, action: #selector(reset))
        
       
        
    }

    @IBAction func touch(_ sender: UIButton) {
        
        counter = counter + 1
    
        title = "\(counter)".uppercased()
        
        let select = UIImpactFeedbackGenerator(style: .heavy)
        select.prepare()
        select.impactOccurred()
        
        
        sender.shake()
        
      
        }
       
    
    @objc func reset() {
        
            counter = 0
        
            title = "\(counter)".uppercased()

    }
    


}

