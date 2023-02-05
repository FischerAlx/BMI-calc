//
//  ViewController.swift
//  BMI-calc
//
//  Created by Александр Фишер on 18.12.22.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var currentHeightLabel: UILabel!
    @IBOutlet weak var currentWeightLabel: UILabel!
    

    var currentHeight: Float = 1.8
    var currentWeight: Float = 80
    var bMI: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func pressedCalcButton(_ sender: UIButton) {
        
        bMI = currentWeight/((currentHeight)*(currentHeight)/10000)
        print(bMI)
        bmiValue = String(format: "% .1f", bMI)
        print(bmiValue)
        
        calculatorBrain.calculateBMI(height: currentHeight, weight: currentWeight)
        
        self.performSegue(withIdentifier: "toSecondVC", sender: self)
        
    }
    
    @IBAction func changedHeightSlider(_ sender: UISlider) {
        currentHeight = sender.value
        currentHeightLabel.text = String(format: "%.2f", currentHeight/100) + "m"
        
    }
    
    @IBAction func changedWeightSlider(_ sender: UISlider) {
        currentWeight = sender.value
        currentWeightLabel.text = String(Int(currentWeight)) + "kg"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
    
     
    
    
}

