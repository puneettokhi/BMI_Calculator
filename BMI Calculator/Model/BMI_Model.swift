//
//  BMI_Model.swift
//  BMI Calculator
//
//  Created by Mr. Puneet on 4/19/21.
//

import UIKit

struct BMI_Model{
    var bmi: BMI?
    
    func getBMIValue() -> String {
            let bmiVal = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiVal
    }

    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue == 0.0{
            bmi = BMI(value: 0.0, advice: "Invalid Input", color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        }else if bmiValue >= 1 && bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "EAT MORE PIES!!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "YOU ARE DOING GREAT. KEEP IT UP!!!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "EAT LESS PIES!!!!", color: #colorLiteral(red: 0.9251942039, green: 0.1370312274, blue: 0.1106911376, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No Advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
}
