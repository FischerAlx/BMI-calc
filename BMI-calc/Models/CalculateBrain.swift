


import Foundation


var bmiValue = "0.0"

struct CalculatorBrain {
    
    var bMI: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bMI = weight/((height)*(height)/10000)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "% .1f", bMI)
        return bmiValue
    }
    
    
    //bMI = currentWeight/((currentHeight)*(currentHeight)/10000)
    //bmiValue = String(format: "% .1f", bMI)
    
}
