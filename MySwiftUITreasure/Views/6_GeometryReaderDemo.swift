//
//  GeometryReaderDemo.swift
//  swiftuiplayaround
//
//  Created by Mengjiao Yang on 9/21/21.
//

import SwiftUI

/*
 GeometryReader
 
 Introduce :
 0 you can think it as a size and position reader.
 1 similar to push-out container view, you can add child view in it.
 2 allow you to access the height width and safe area insets.
 3 it help dynamically set the sized of views within it so they look good on any size devices
 kind of like auto layout.
 4 Better not to use GeometryReader in ZStack,because ZStack has very flexible alignment options.
 
 Demos :
 
 1 notice that the "circle" image pushed to the left top area
 2 we can get width and height and coordinate and safe area insets
 
 */
struct GeometryReaderDemo: View {
    var body: some View {
        //Demo 1
        VStack {
            GeometryReader { geo in
                Image(systemName: "circle")
            }
        }
        .background(Color.red)
        
       // Demo 2
        GeometryReader { geo in
            VStack {
                
                Text("Width: \(geo.size.width)")
                Text("Height: \(geo.size.height)")
                
                // Always returns 0, not really useful
                Text("local X: \(geo.frame(in: .local).origin.x)")
                Text("local Y: \(geo.frame(in: .local).origin.y)")
                
                // the coordinate inside the current view.
                Text("global X: \(geo.frame(in: .global).origin.x)")
                Text("global Y: \(geo.frame(in: .global).origin.y)")
                
                // minX minX maxX maxY midX midX
                HStack {
                    Text("min X: \(geo.frame(in: .global).minX)")
                    Text("mid X: \(geo.frame(in: .global).midX)")
                    Text("max X: \(geo.frame(in: .global).maxX)")
                    
                    Text("min Y: \(geo.frame(in: .global).minY)")
                    Text("mid Y: \(geo.frame(in: .global).midY)")
                    Text("max Y: \(geo.frame(in: .global).maxY)")
                }
                
                // safe area insets
                Text("leading X: \(geo.safeAreaInsets.leading)")
                Text("trailing X: \(geo.safeAreaInsets.trailing)")
            }
            
            
        }
        .background(Color.red)
    }
}

struct GeometryReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
    }
}
