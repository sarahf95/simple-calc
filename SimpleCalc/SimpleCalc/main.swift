//
//  main.swift
//  SimpleCalc
//
//  Created by Sarah Feldmann on 10/10/17.
//  Copyright © 2017 Sarah Feldmann. All rights reserved.
//

import Foundation

print(" Enter an expression separated by returns:")

var numbers : Int = []
var response = readLine()!
var num = Int(response)

while(num != nil){
    numbers += [num]
    var response = readLine();
}

switch response {
    case "count":
       let result = numbers.count
case "avg":
    var total = 0
    for i in 0...numbers.count{
        total += numbers[i]
    }
    let result = total / numbers.count
case "fact":
    if(numbers.count == 1){
        var Int : fact = 1
        for i in 1...numbers[0]{
            fact = fact * numbers[i]
        }
        let result = fact
    } else {
        let result = "I cannot find the factorial of more than one number"
    }
    
case "+":
    let response2 = readLine()!
    var num2 = Int(response2)
    let result = numbers[0] + num2
case "-":
    let response2 = readLine()!
    var num2 = Int(response2)
    let result = numbers[0] - num2
case "*":
    let response2 = readLine()!
    var num2 = Int(response2)
    let result = numbers[0] * num2
case "/":
    let response2 = readLine()!
    var num2 = Int(response2)
    let result = numbers[0] / num2
case "%":
    let response2 = readLine()!
    var num2 = Int(response2)
    let result = numbers[0].truncatingRemainder(dividingBy: num2)
default:
    let result = "We do not recognize that command"
}




