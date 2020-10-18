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
