//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Christina Labay on 9/2/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var numPeople = 2
    var tipPercent:Double = 0.0
    var split:String = ""
    
    mutating func calculateSplit(bill: Double) {
        let tipAmt = bill * tipPercent
        let spt =  ( bill + tipAmt ) / Double( numPeople )
        split = String( format: "%.2f", spt )
    }
    
    func getSplit() -> String {
        return split
    }
}
