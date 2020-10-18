//
//  ClassStructureUI.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 18/10/20.
//

import SwiftUI

struct ClassStructureUI: View {
    var body: some View {
        Text("(Check the output in the console area)")
        List {
            Text("Value and Reference Types")
                .onTapGesture {
                    valueAndRefTypes()
                }
        }.navigationBarTitle("Class & Structure Exercises")
        .listStyle(GroupedListStyle())
    }
}

struct ClassStructureUI_Previews: PreviewProvider {
    static var previews: some View {
        ClassStructureUI()
    }
}
