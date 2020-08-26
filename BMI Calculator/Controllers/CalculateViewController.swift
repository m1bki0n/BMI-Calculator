//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Makwan BK on 3/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var makeCalculate = String()
    var advice = String()
    var bc = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = makeCalculate
        adviceLabel.text = advice
        view.backgroundColor = bc
    }
    

    @IBAction func recalculateTapped(_ sender: UIButton) {

        
        dismiss(animated: true, completion: nil)
    }
}
