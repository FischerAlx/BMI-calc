//
//  SecondViewController.swift
//  BMI-calc
//
//  Created by Александр Фишер on 10.01.23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(currentHeight, currentWeight)
        //BMI = currentWeight/((currentHeight/100)*(currentHeight/100))
        resultLabel.text = bmiValue
    }
    
    @IBAction func pressedBackButton(_ sender: Any) {
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
