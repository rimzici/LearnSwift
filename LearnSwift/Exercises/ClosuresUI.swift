//
//  ClosuresUI.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 05/09/20.
//

import SwiftUI

struct ClosuresUI: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("1. Closure Basic Usage")
                .onTapGesture {
                    closureUsage()
                }
            Text("2. Escaping Closure Usage")
                .onTapGesture {
                    ClosureClass().escapingClosure() {
                        print("TEST inside closure")
                    }
                }
        }.navigationBarTitle("Closures Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct ClosuresUI_Previews: PreviewProvider {
    static var previews: some View {
        ClosuresUI()
    }
}
