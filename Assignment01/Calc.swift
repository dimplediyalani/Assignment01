//
//  Calc.swift
//  Assignment01
//
//  Created by user214042 on 2/9/22.
//

import Foundation
class Calc {
    var numbers = [String]()
    func push(s: String) {
        numbers.append(s)
        print(numbers)
    }
    func result() -> Int {
    var n1 = 0
    var n2 = 0
    var calResult = 0
    for stringIndex in 0...(numbers.count-1)
    {
        if(numbers[stringIndex] == "+") {
            if  n1 == 0 && n2 == 0 {
                n1 = Int(numbers[stringIndex-1])!
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 + n2
                n1 = calResult
            }
            else {
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 + n2
                n1 = calResult
            }
        }
        if(numbers[stringIndex] == "-") {
            if n1 == 0 && n2 == 0 {
                n1 = Int(numbers[stringIndex-1])!
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 - n2
                n1 = calResult
            }
            else {
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 - n2
                n1 = calResult
            }
        }
        if(numbers[stringIndex] == "*") {
            if n1 == 0 && n2 == 0 {
                n1 = Int(numbers[stringIndex-1])!
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 * n2
                n1 = calResult
            }
            else {
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 * n2
                n1 = calResult
            }
        }
        if(numbers[stringIndex] == "/") {
            if n1 == 0 && n2 == 0 {
                n1 = Int(numbers[stringIndex-1])!
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 / n2
                n1 = calResult
            }
            else {
                n2 = Int(numbers[stringIndex+1])!
                calResult = n1 / n2
                n1 = calResult
            }
        }
    }
    numbers.removeAll()
    return calResult
}
    func erase() {
        numbers.removeAll()
    }
}
