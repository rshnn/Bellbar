//
//  ViewController.swift
//  Bellbar
//
//  Created by Roshan Patel on 8/7/15.
//  Copyright (c) 2015 Roshan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch5: UISwitch!
    @IBOutlet weak var switch10: UISwitch!
    @IBOutlet weak var switch25: UISwitch!
    @IBOutlet weak var switch35: UISwitch!
    @IBOutlet weak var switch45: UISwitch!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    @IBAction func setWeight(sender: AnyObject) {
        weightField.resignFirstResponder();
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        weightField.resignFirstResponder();
    }
    
    
    
    @IBAction func mathItPressed(sender: AnyObject) {
        
        
        if(!weightField.text.isEmpty){
        
            let total = weightField.text.toInt()!
            var brain = Brain(userInput: total);

            
            if(total <= 44){
                output.text = "Please enter a weight greater than 45."
            }else{
            
                output.text = brain.divide(switch2.on, switch5: switch5.on, switch10: switch10.on, switch25: switch25.on, switch35: switch35.on, switch45: switch45.on);
                
                
                //For Testing:
                //output.text = String( brain.numberOfPlatesNeeded(135) )
            
                //output.text = String(stringInterpolationSegment: switch2.on)
                
            }
        
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

