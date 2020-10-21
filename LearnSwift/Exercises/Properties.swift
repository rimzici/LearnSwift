//
//  Properties.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 19/10/20.
//

import Foundation

func storedAndComputedProps() {
    struct DummyStoredProp {
        
    }
    struct ConstTimeMotion {
        var dummyStoredProp = DummyStoredProp()
        var displacement: Int
        let time: Int
        var velocity: Int {
            get {
                (displacement / time)
            }
            set(newVelocity) {
                displacement = newVelocity * time
            }
        }
    }
    var constTimeMotion = ConstTimeMotion(displacement: 100, time: 10);
    print("TEST init constTimeMotion.displacement : ", constTimeMotion.displacement)
    print("TEST init constTimeMotion.time : ", constTimeMotion.time)
    print("TEST init constTimeMotion.velocity : ", constTimeMotion.velocity)
    constTimeMotion.velocity = 20
    print("TEST post set constTimeMotion.displacement : ", constTimeMotion.displacement)
    print("TEST post set constTimeMotion.time : ", constTimeMotion.time)
    print("TEST post set constTimeMotion.velocity : ", constTimeMotion.velocity)
}

func propertyObservers() {
    class DoorSensor {
        var motionDetected = false {
            willSet(newValue) {
                if (newValue) {
                    gainCameraFocus()
                }
            }
            didSet(oldValue) {
                if (motionDetected) {
                    notify()
                }
            }
        }
        
        func gainCameraFocus() {
            print("The CCTV camera is made to focus the door")
        }
        
        func notify() {
            print("Some motion has been detected at the door")
        }
    }

    DoorSensor().motionDetected = true
}

func propertyWrappers() {
    @propertyWrapper
    struct tenOrLess {
        private var number: Int = 0
        var wrappedValue: Int {
            get {
                return number
            }
            set {
                number = min(10, newValue)
            }
        }
        
        init() {
        }
        init(number: Int) {
            self.number = number
        }
    }
    
    class AClass {
        @tenOrLess var aClassVar: Int
        @tenOrLess(number: 3) var bClassVar: Int
    }
    
    let aClass = AClass()
    print("TEST right after instantiation aClass.aClassVar", aClass.aClassVar)
    print("TEST right after instantiation  aClass.bClassVar", aClass.bClassVar)
    aClass.aClassVar = 5
    print("TEST aClass.aClassVar", aClass.aClassVar)
    print("TEST aClass.bClassVar", aClass.bClassVar)
    aClass.aClassVar = 15
    aClass.bClassVar = 15
    print("TEST aClass.aClassVar", aClass.aClassVar)
    print("TEST aClass.bClassVar", aClass.bClassVar)
}


func projectedValue() {
    @propertyWrapper
    struct SomeStruct {
        private var number: Int = 0
        var projectedValue: Any = false
        var funcProjectedValue: Any {
            get {
                func aFunction() -> Int {
                    return 1;
                }
                return aFunction
            }
        }
        var wrappedValue: Int {
            get {
                return number
            }
            set {
                if (newValue > 10) {
                    projectedValue = funcProjectedValue
                    number = 10
                } else {
                    projectedValue = false;
                    number = newValue
                }
            }
        }
    }
    
    class SomeClass {
        @SomeStruct var aClassVar: Int
    }
    
    var someClass = SomeClass()
    print("TEST right after instantiation someClass.aClassVar: ", someClass.aClassVar)
    print("TEST right after instantiation someClass.$aClassVar: ", someClass.$aClassVar)
    
    someClass.aClassVar = 30
    print("TEST someClass.aClassVar: ", someClass.aClassVar)
    print("TEST someClass.$aClassVar: ", someClass.$aClassVar)
    
    var expectedFunctionType: () -> Int
    var c = type(of: someClass.$aClassVar) == type(of: expectedFunctionType)
    print("TEST c", c)
    guard c == true else {
        print("TEST projectedValue is not function")
        return
    }
    var asFunc = someClass.$aClassVar as! () -> Int
    print("TEST asFunc ",asFunc())
}
