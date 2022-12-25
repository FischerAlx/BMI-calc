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
    
    var currentHeight: Float = 1.8
    var currentWeight: Float = 80
    var BMI: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func pressedCalcButton(_ sender: UIButton) {
        print(currentHeight, currentWeight)
        BMI = currentWeight/((currentHeight/100)*(currentHeight/100))
        print(BMI)
    }
    
    @IBAction func changedHeightSlider(_ sender: UISlider) {
        currentHeight = sender.value
        currentHeightLabel.text = String(format: "%.2f", currentHeight/100) + "m"
        
    }
    
    @IBAction func changedWeightSlider(_ sender: UISlider) {
        currentWeight = sender.value
        currentWeightLabel.text = String(Int(currentWeight)) + "kg"
        
    }
    
    
    
    
    
    
}

