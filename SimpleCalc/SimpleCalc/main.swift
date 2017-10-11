//
//  main.swift
//  SimpleCalc
//
//  Created by Sarah Feldmann on 10/10/17.
//  Copyright © 2017 Sarah Feldmann. All rights reserved.
//

import Foundation

let simpleCalc = SimpleCalc()
simpleCalc.staticMode()

print("Enter an expression separated by returns:")
var result = 0.0
var firstRes = readLine(strippingNewline: true)!
let resArr = firstRes.split(separator:" ")
let length = resArr.count
switch length {
case 1 :
    let num1 = Double(firstRes)
    let operation: String = readLine(strippingNewline: true)!
    let secondRes = readLine(strippingNewline: true)!
    let num2 = Double(secondRes)
    
    switch operation {
        case "+" :
            result = num1! + num2!
        case "-" :
            result = num1! - num2!
        case "*" :
            result = num1! * num2!
        case "/" :
            result = num1! / num2!
        case "%" :
            result = num1!.truncatingRemainder(dividingBy: num2!)
        default:
            result = 0
        }
default:
    let operation = resArr.last!
    switch operation {
        case "count":
            result = Double(resArr.count - 1)
        case "avg":
            for index in 0...(resArr.count - 2){
                result += Double(resArr[index])!
            }
            result /= Double(resArr.count - 1)
    case "fact":
            var factSum = 1.0
            var val = Int(resArr[0])!
            if(val < 0){
                val = val * -1
            }
            for index in 1...(val){
                factSum = factSum * Double(index)
            }
            if(Double(val).truncatingRemainder(dividingBy: 2) == 1){
                result = factSum * -1
            } else {
                result = factSum;
            }
    default :
        result = 0.0
    }
}
print("Result: \(result)")
