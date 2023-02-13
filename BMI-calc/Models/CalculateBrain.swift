


import UIKit




struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        return String(format: "% .1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/((height)*(height)/10000)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", color: UIColor.init(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Nice form", color: UIColor.init(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.5))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less snacks", color: UIColor.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.5))
        }
        
    }
    
    
    
    //bMI = currentWeight/((currentHeight)*(currentHeight)/10000)
    //bmiValue = String(format: "% .1f", bMI)
    
}
