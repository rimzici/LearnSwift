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
