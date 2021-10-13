//
//  WeightConverter.swift
//  Calculator
//
//  Created by Kshama Vidyananda on 11/10/21.
//

import Foundation
class WeightConverter{
    let digitToTon: Double = 1000000
    let digitToPound : Double = 0.0022046
    let digitToKg : Double = 1000
    
    func digittoTon(digit: Double) ->Double{
        return digit/digitToTon
    }
    
    func digittoPound(digit: Double) ->Double{
        return digit * digitToPound
    }
    
    func digittoKg(digit: Double) ->Double{
        return digit/digitToKg
    }
    
    func digittoG(digit: Double)-> Double{
        return digit
    }
    func digittoMilliG(digit: Double) ->Double{
        return digit * digitToKg
    }
    func digittoMicroG(digit: Double) ->Double{
        return digit * digitToTon
    }
    
    func completeConverter(digit: Double) -> (ton: Double, pound: Double, kg: Double, g: Double, mg: Double, ug: Double){
        return (digittoTon(digit: digit), digittoPound(digit: digit),digittoKg(digit: digit),digittoG(digit: digit),digittoMilliG(digit: digit),digittoMicroG(digit: digit))
    }
}
