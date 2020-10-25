//
//  SubscriptUIView.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 25/10/20.
//

import SwiftUI

struct SubscriptUIView: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("Subscript Options")
                .onTapGesture {
                    subscriptOptions()
                }
        }.navigationBarTitle("Subscript Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct SubscriptUIView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptUIView()
    }
}
