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
    }
    
    class AClass {
        @tenOrLess var aClassVar: Int
    }
    
    var aClass = AClass()
    aClass.aClassVar = 5
    print("TEST aClass.aClassVar", aClass.aClassVar)
    aClass.aClassVar = 15
    print("TEST aClass.aClassVar", aClass.aClassVar)
}
