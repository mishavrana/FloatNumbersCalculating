//
//  main.swift
//  FloatNumbers
//
//  Created by Misha Vrana on 17.04.2022.
//

import Foundation

class Main {
    var numberOne: String? = ""
    var numberTwo: String? = ""
    
    var operation: String? = ""
    
    let formatter = NumberFormatter()
    
    init() {
        formatter.numberStyle = .scientific
        formatter.positiveFormat = "0.###E+0"
        formatter.exponentSymbol = "e"
    }
    
    func calculate() {
        print("Enter number one")
        numberOne = readLine()
        
        print("Enter number two")
        numberTwo = readLine()
        
        print("Enter the operation")
        operation = readLine()
        
        if Float(numberOne!) != nil && Float(numberTwo!) != nil {
            
            let floatNumberOne = Float(numberOne!)
            let floatNumberTwo = Float(numberTwo!)
            
            switch self.operation {
            case "+":
                print (
                    "Sum of numbers = \(formatter.string(for:(floatNumberOne! + floatNumberTwo!)) ?? "")"
                )
                break
            case "-":
                print (
                    "Difference of numbers = \(formatter.string(for:(floatNumberOne! - floatNumberTwo!)) ?? "")"
                )
                break
            case "*":
                print (
                    "Product of numbers = \(formatter.string(for:(floatNumberOne! * floatNumberTwo!)) ?? "")"
                )
                break
            case "/":
                print (
                    "Fraction of numbers = \(formatter.string(for:(floatNumberOne! / floatNumberTwo!)) ?? "")"
                )
                break
            default:
                return
            }
        }
        
    }
}

var newCalculation = Main()
newCalculation.calculate()
