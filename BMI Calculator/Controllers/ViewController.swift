//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let label = String(format: "%.2f", sender.value)
        print(String(format: "%.2f", sender.value))
        heightLabel.text = "\(label)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(Int(sender.value))
        let label = Int(sender.value)
        weightLabel.text = "\(String(label))Kg"
    }
    
    
    @IBAction func calculationPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmiValue = weight/pow(height, 2)
        
        print(String(format: "%.2f", bmiValue))
    }
}

