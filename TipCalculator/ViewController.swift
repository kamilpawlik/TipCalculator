//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kamil Pawlik on 04.01.2016.
//  Copyright © 2016 COREO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalValue: UILabel!
    
    
    var currentTipPercentValue = 20
    var currentBillValue = Float(0.0)
    
    var tipCalculatorModel = TipCalculatorModel()
    

    @IBAction func tipPercentSliderChanged(sender: UISlider) {
        currentTipPercentValue = Int(sender.value)
        tipPercentLabel.text = "\(currentTipPercentValue)%"
        
        updateCalculations()
    }
    
    @IBAction func billValueChanged(sender: UITextField) {
        if let currentValue = sender.text {
            currentBillValue = Float(currentValue)!
            updateCalculations()
        }
    }

    func updateCalculations() {
        tipCalculatorModel.billValue = currentBillValue
        tipCalculatorModel.tipPercent = currentTipPercentValue
        
        tipValue.text = "\(tipCalculatorModel.tipValue)zł"
        totalValue.text = "\(tipCalculatorModel.totalValue)zł"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCalculations()
    }

    
}

