//
//  Enumerations.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 18/10/20.
//

import Foundation

func enumWithoutDefaultRawValues() {
    enum NumberEnums {
        case one
        case two
        case three
        case four
    }
    print("TEST NumberEnums.three \(NumberEnums.three)")
    let typeOfThree = type(of: NumberEnums.three)
    print("TEST typeOfThree \(typeOfThree)")
    // Accessing NumberEnums.three.rawValue throws error!!
}

func enumWithDefaultRawValues() {
    enum NumberEnums: Int {
        case one
        case two
        case three
        case four
    }
    print("TEST NumberEnums.three \(NumberEnums.three)")
    let typeOfThree = type(of: NumberEnums.three)
    print("TEST typeOfThree \(typeOfThree)")
    print("TEST NumberEnums.three.rawValue \(NumberEnums.three.rawValue)")
}

func enumInSwitchCase() {
    enum NumberEnums: Int {
        case one = 10
        case two
        case three
        case four
    }
    var aCaseOfNumberEnums = NumberEnums.one
    aCaseOfNumberEnums = .three
    print("TEST aCaseOfNumberEnums \(aCaseOfNumberEnums)")
    switch aCaseOfNumberEnums {
        case .one:
            print("TEST one \(NumberEnums.one)")
        case .two:
            print("TEST two \(NumberEnums.two)")
        case .three:
            print("TEST three \(NumberEnums.three)")
        case .four:
            print("TEST four \(NumberEnums.four)")
    }
    var aCaseRawValueOfNumberEnums = NumberEnums.one.rawValue
    aCaseRawValueOfNumberEnums = NumberEnums.three.rawValue
    print("TEST aCaseRawValueOfNumberEnums \(aCaseRawValueOfNumberEnums)")
    switch aCaseRawValueOfNumberEnums {
        case NumberEnums.one.rawValue:
            print("TEST one.rawValue \(NumberEnums.one.rawValue)")
        case NumberEnums.two.rawValue:
            print("TEST two.rawValue \(NumberEnums.two.rawValue)")
        case NumberEnums.three.rawValue:
            print("TEST three.rawValue \(NumberEnums.three.rawValue)")
        case NumberEnums.four.rawValue:
                print("TEST four.rawValue \(NumberEnums.four.rawValue)")
        default:
            print("TEST NONE")
    }
}


func iterateOverEnumCases() {
    enum someEnum: Int, CaseIterable {
        case a = 30, b, c, d
    }
    
    for enumCase in someEnum.allCases {
        print("TEST enumCase \(enumCase)")
        print("TEST enumCase.rawValue \(enumCase.rawValue)")
    }
}

func associatedValues() {
    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }
    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
    print("TEST 1 productBarcode \(productBarcode)")
    productBarcode = Barcode.qrCode("dhasdjkhdadv")
    print("TEST 2 productBarcode \(productBarcode)")
    switch productBarcode {
        case let .upc(numberSystem, manufacturer, product, check):
            print("TEST UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
        case let .qrCode(productCode):
            print("TEST QR code: \(productCode)")
    }
}

func recursiveEnum() {
    enum ArithMeticExpression {
        case number(Int)
        indirect case addition(ArithMeticExpression, ArithMeticExpression)
        indirect case multiplication(ArithMeticExpression, ArithMeticExpression)
    }
    
    var numOne = ArithMeticExpression.number(3)
    var numTwo = ArithMeticExpression.number(5)
    var sum = ArithMeticExpression.addition(numOne, numTwo)
    var product = ArithMeticExpression.multiplication(sum, numTwo)
    
    func evaluate(_ arithMeticExpression: ArithMeticExpression) -> Int {
        switch arithMeticExpression {
            case let .number(value):
                return value
            
            case let .addition(left, right):
                return evaluate(left) + evaluate(right)
            
            case let .multiplication(left, right):
                return evaluate(left) * evaluate(right)
            
        }
    }
    
    var evaluatedValue = evaluate(product)
    print("TEST evaluatedValue \(evaluatedValue)")
}
