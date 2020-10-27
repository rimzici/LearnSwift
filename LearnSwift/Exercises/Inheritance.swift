//
//  Inheritance.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 27/10/20.
//

import Foundation

func inheritanceEx() {
    class SuperClass {
        var superClassStoredProperty: Int = 0
        func superClassInstanceMethod() -> String {
            return "superClassInstanceMethod"
        }
    }
    
    class SubClass: SuperClass {
        var subClassProperty: Int = 0
        override func superClassInstanceMethod() -> String {
            return "\(super.superClassInstanceMethod())_overridden_from_subclass"
        }
    }
    
    print("TEST SubClass().superClassStoredProperty", SubClass().superClassStoredProperty)
    print("TEST SubClass().subClassProperty", SubClass().subClassProperty)
    print("TEST SubClass().superClassInstanceMethod()", SubClass().superClassInstanceMethod())
}
