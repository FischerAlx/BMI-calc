//
//  ViewController.swift
//  BMI-calc
//
//  Created by Александр Фишер on 18.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentHeightLabel: UILabel!
    @IBOutlet weak var currentWeightLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func pressedCalcButton(_ sender: UIButton) {
        
       
         
    }
    
    @IBAction func changedHeightSlider(_ sender: UISlider) {
        currentHeightLabel.text = String(format: "%.2f", sender.value/100) + "m"
        
        
    }
    
    @IBAction func changedWeightSlider(_ sender: UISlider) {
        currentWeightLabel.text = String(Int(sender.value)) + "kg"
        
        
    }
    
    
    
    
    
    
}

