//
//  Closures.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 03/09/20.
//

import Foundation


func closureUsage() {
    let digitNames = [
        0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
    ]
    let numbers = [16, 58, 510]
    let strings = numbers.map { (number) -> String in
        var number = number
        var output = ""
        repeat {
            output = digitNames[number % 10]! + output
            number /= 10
        } while number > 0
        return output
    }
    print("TEST strings : \(strings)")
}

class ClosureClass {
    func escapingClosure(completionHandler: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("TEST Timer fired!")
            completionHandler();
        }
        print("TEST statement below Timer")
    }
}

