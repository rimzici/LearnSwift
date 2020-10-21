//
//  PropertiesUI.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 19/10/20.
//

import SwiftUI

struct PropertiesUI: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("Stored And Computed Properties")
                .onTapGesture {
                    storedAndComputedProps()
                }
            Text("Property Observers")
                .onTapGesture {
                    propertyObservers()
                }
            Text("Property Wrappers")
                .onTapGesture {
                    propertyWrappers()
                }
            Text("Projected Value")
                .onTapGesture {
                    projectedValue()
                }
        }.navigationBarTitle("Properties Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct PropertiesUI_Previews: PreviewProvider {
    static var previews: some View {
        PropertiesUI()
    }
}
