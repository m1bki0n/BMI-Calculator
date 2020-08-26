//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    let generator = UIImpactFeedbackGenerator(style: .medium)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    
    @IBAction func calculateTapped(_ sender: UIButton) {
        
        generator.impactOccurred()
        
        let height = heightSlider.value
        let weight = widthSlider.value
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "CalculateView") as? CalculateViewController {
            ///Another way to present a view:
            //let secondVC = SecondViewController()
            //self.present(secondVC, animated: true)
            vc.makeCalculate = calculatorBrain.calculateValues(weight, height)
            
            vc.advice = calculatorBrain.getAdvice()
            vc.bc = calculatorBrain.getColor()
            present(vc, animated: true, completion: nil)
        }
        
    }
    
    
}

