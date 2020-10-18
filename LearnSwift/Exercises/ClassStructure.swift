//
//  ClassStructure.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 18/10/20.
//

import Foundation

struct FirstStruct {
    var firstStructProp = 1;
}
class FirstClass {
    var firstClassProp = 1;
}

func valueAndRefTypes() {
    let objFirstStruct = FirstStruct()
    var objFirstStructCopy = objFirstStruct;
    objFirstStructCopy.firstStructProp = 200;
    print("TEST objFirstStruct.firstStructProp \(objFirstStruct.firstStructProp)")
    print("TEST objFirstStructCopy.firstStructProp \(objFirstStructCopy.firstStructProp)")
    
    let objFirstClass = FirstClass()
    var objFirstClassCopy = objFirstClass;
    objFirstClassCopy.firstClassProp = 200;
    print("TEST objFirstClass.firstClassProp \(objFirstClass.firstClassProp)")
    print("TEST objFirstClassCopy.firstClassProp \(objFirstClassCopy.firstClassProp)")
}
