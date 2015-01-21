//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Ramanathan Palaniappan on 12/21/14.
//  Copyright (c) 2014 Ramanathan Palaniappan. All rights reserved.
//

import Foundation

// class to caluclate Tips
class TipCalculator {
    var total: Double
    var taxPct: Double
    
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let tipPcts: [Double] = [0.15, 0.18, 0.20]
        var retVal: [Int: Double] = [Int: Double]()
        for tp in tipPcts {
            let intPct: Int = Int(tp*100)
            retVal[intPct] =  calcTipWithTipPct(tp)
        }
        return retVal
    }
}
