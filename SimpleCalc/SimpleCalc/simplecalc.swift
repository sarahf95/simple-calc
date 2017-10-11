//
//  simplecalc.swif.swift
//  SimpleCalc
//
//  Created by Sarah Feldmann on 10/10/17.
//  Copyright © 2017 Sarah Feldmann. All rights reserved.
//

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(value: String) {
        switch value {
        case "a": self = .anagram
        case "p": self = .palindrome
        case "h": self = .help
        default: self = .unknown
        }
    }
}

class SimpleCalc {
    
    let consoleIO = ConsoleIO()
    
    func staticMode() {
        consoleIO.printUsage()
    }
    
}
