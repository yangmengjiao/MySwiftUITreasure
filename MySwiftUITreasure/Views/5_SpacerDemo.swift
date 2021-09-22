//
//  ContentView.swift
//  swiftuiplayaround
//
//  Created by Mengjiao Yang on 9/21/21.
//

import SwiftUI

/*
 Spacer :
 1 Spacer pushes thing away either horizontally or vertically
 
 2 we can add minLength to space
 
 3 Spacer are views, we can apply modifiers on it
 */
struct SpacerDemo: View {
    var body: some View {
        
        // Demo 1 : use spacer to evenly space views.
        VStack {
            Spacer()
            Text("Hello, world!")
                .padding()
            Spacer()
            Text("Hello, world!")
                .padding()
            Spacer()
            Text("Hello, world!")
                .padding()
            Spacer()
        }
        
        // Demo 2 :
        HStack {
            Text("Hello, worlddfdfdfdfdffdfdfdfdffdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfffffffffffffffffffffffffff!")
                .padding()
            Spacer(minLength: 200)
            Text("Hello, world!")
        }
        
        // Demo 3 :
        VStack {
            Spacer()
                .frame(width: 5)
                .background(Color.black)
        }
    }
}

struct ContentViewd_Previews: PreviewProvider {
    static var previews: some View {
        SpacerDemo()
    }
}
