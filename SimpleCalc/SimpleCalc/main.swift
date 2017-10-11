//////
//////  main.swift
//////  SimpleCalc
//////
//////  Created by Sarah Feldmann on 10/10/17.
//////  Copyright © 2017 Sarah Feldmann. All rights reserved.
//////
////
////import Foundation
////
////print("Enter an expression separated by returns:")
////
////let response = readLine(strippingNewline: true)!
////let scanner = Scanner(string: response)
////scanner.charactersToBeSkipped(' ')
//////let numbers = response.characters.split(separator: " ")
//////let numbers = inputNumberCharacters.map { Int(String($0))! }
////print(numbers)
//////var num = numbers[0]
////if numbers.count == 1 {
//////    var response = readLine(strippingNewline: true)!;
//////    switch response {
//////    case "+":
//////    let response2 = readLine(strippingNewline: true)!
//////    var num2 = Int(response2)
//////    let result = num + num2
//////    case "-":
//////    let response2 = readLine(strippingNewline: true)!
//////    var num2 = Int(response2)
//////    let result = num - num2
//////    case "*":
//////    let response2 = readLine(strippingNewline: true)!
//////    var num2 = Int(response2)
//////    let result = num * num2
//////    case "/":
//////    let response2 = readLine(strippingNewline: true)!
//////    var num2 = Int(response2)
//////    let result = num / num2
//////    case "%":
//////    let response2 = readLine(strippingNewline: true)!
//////    var num2 = Int(response2)
//////    let result = numbers[0].truncatingRemainder(dividingBy: num2)
//////    default:
//////    let result = "We do not recognize that command"
//////}
//////
////} else {
////    var type : String = String(numbers[numbers.count])
////    switch type{
////        case "count":
////            let result = numbers.count
////        case "avg":
////            var total = 0
////            for i in 0...numbers.count{
////                total += numbers[i]
////            }
////            let result = total / numbers.count
////        case "fact":
////            if(numbers.count == 1){
////                var fact = 1
////                for i in 1...numbers[0]{
////                    fact = fact * numbers[i]
////                }
////                let result = fact
////            } else {
////                let result = "I cannot find the factorial of more than one number"
////            }
////    default:
////        let result = "Sorry, I don't recognize that command"
////
////    }
////}
////
////
//////
//////var numbers : [v] = []
//////var response = readLine(strippingNewline: true)!
//////var num = Int(response)
//////
//////while(num != nil){
//////    numbers.append(num)
//////    var response = readLine();
//////}
//////
//////switch response {
//////
////
////
//
//import Foundation
//
////func factorial(factNum: Double) -> (Double) {
////    if factNum > 1 {
////        return factNum * factorial((factNum-1))
////    }
////    return 1
////}
//
//print("Enter an expression separated by returns")
//var result: Double = 0.0;
//var num1: Double = 0.0
//var num2: Double = 0.0
//var count: Int = 0
//var operation: String = ""
//var respDouble:Double? = 0.0
//
////repeat {
//    let response = readLine()!
//    respDouble = Double(response)
//    if respDouble != nil{
//        num1 = num1 + respDouble!
//        count = count + 1
//    } else {
//        let list = response.components(separatedBy: " ")
//        operation =  list[list.count - 1]
//        print(list)
//
//
//
////while respDouble != nil
//
//if (count == 1 && operation != "fact"){
//    let response = readLine()!
//    num2 = Double(response)!
//
//}
//
//switch operation{
//case "+":
//    result = num1+num2
//case "-":
//    result = num1-num2
//case "*":
//    result = num1*num2
//case "/":
//    result = num1/num2
//case "%":
//    result = num1.truncatingRemainder(dividingBy:num2)
//case "count":
//    print(list)
//    result = Double(list.count)
////case "avg":
////    var total = 0.0
////    for i in 1...(list.count - 1){
////        Double(total) += Double(list[i])
////    }
////    result = total/Double(count)
//case "fact":
//    var fact = 1.0
//    print (num1)
//    for i in 1...Int(num1){
//        print(fact)
//        fact = fact * Double(i)
//    }
//    result = fact
//
//default:
//    print("Dont understand operation")
//}
//
//if Double(Int(result)) == result {
//    print ("Result: \(Int(result))")
//} else {
//    print ("Result: \(result)")
//}
//}


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
