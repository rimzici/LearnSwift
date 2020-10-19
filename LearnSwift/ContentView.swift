//
//  ContentView.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 03/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ClosuresUI()) {
                    Text("Closures")
                }
                NavigationLink(destination: EnumerationsUI()) {
                    Text("Enumerations")
                }
                NavigationLink(destination: ClassStructureUI()) {
                    Text("Class And Structure")
                }
                NavigationLink(destination: PropertiesUI()) {
                    Text("Properties")
                }
            }.navigationBarTitle("Exercises")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
