//
//  EnumerationsUI.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 18/10/20.
//

import SwiftUI

struct EnumerationsUI: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("1. Enum cases without default raw values")
                .onTapGesture {
                    enumWithoutDefaultRawValues()
                }
            Text("2. Enum cases with default raw values")
                .onTapGesture {
                    enumWithDefaultRawValues()
                }
            Text("3. Enum in switch cases")
                .onTapGesture {
                    enumInSwitchCase()
                }
            Text("4. Iterate over enum cases")
                .onTapGesture {
                    iterateOverEnumCases()
                }
            Text("5. Associated Values")
                .onTapGesture {
                    associatedValues()
                }
            Text("6. Recursive Enum")
                .onTapGesture {
                    recursiveEnum()
                }
        }.navigationBarTitle("Enumerations Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct EnumerationsUI_Previews: PreviewProvider {
    static var previews: some View {
        EnumerationsUI()
    }
}
