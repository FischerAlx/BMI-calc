//
//  SecondViewController.swift
//  BMI-calc
//
//  Created by Александр Фишер on 10.01.23.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tipsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //.currentHeight, ViewController.currentWeight)
        //BMI = currentWeight/((currentHeight/100)*(currentHeight/100))
        //print(bmiValue)
        resultLabel.text = bmiValue
    }
    
    @IBAction func pressedBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
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
