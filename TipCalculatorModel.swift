//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Kamil Pawlik on 04.01.2016.
//  Copyright © 2016 COREO. All rights reserved.
//

struct TipCalculatorModel {
    
    var billValue = Float(0.0)
    var tipPercent = 20
    
    var tipValue: Int {
        get {
            return Int(billValue) * tipPercent / 100
        }
    }
    
    var totalValue: Float {
        get {
            return billValue + Float(tipValue)
        }
    }
    
}