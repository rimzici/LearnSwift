//
//  InheritanceUIView.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 27/10/20.
//

import SwiftUI

struct InheritanceUIView: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("Inherit and Override")
                .onTapGesture {
                    inheritanceEx()
                }
        }.navigationBarTitle("Inheritance Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct InheritanceUIView_Previews: PreviewProvider {
    static var previews: some View {
        InheritanceUIView()
    }
}
