//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Makwan BK on 3/9/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateValues(_ weight: Float, _ height: Float) -> String {
        let result = weight / (height * height)
        
        if result < 18.5 {
            bmi = BMI(advice: "Eat more pies.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if result < 24.9 {
            bmi = BMI(advice: "Fit as fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
        return String(format: "%.1f", result)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO ADVICE"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
