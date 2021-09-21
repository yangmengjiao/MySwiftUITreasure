//
//  ZStackDemos.swift
//  SwiftBasic
//
//  Created by mengjiao on 9/21/21.
//

import SwiftUI
/*
 Zstack
 1 a pull-in container view. It is a view that overlays its child views on top of each other.
 
 2 ZStacks are great for setting a background color.
 
 3 ZStacks are great for layering views. For example, putting text on top of an image
 
 4 ZStacks has many alignment choices : center leading trailing top bottom topLeading topTrailing bottomLeading bottomTrailing.
 */
struct ZStackDemos: View {
    var body: some View {
        ZStack {
            Color.gray
                // 2 if we add ignoresSafeArea on ZStack, we will have an issue.
                .ignoresSafeArea(.all) // Ignore the safe areas
            
            VStack(spacing: 20) {
                
                Text("ZStack") .font(.largeTitle)
                
                Text("Edges Ignoring Safe Area") .foregroundColor(.white)
                
                Text("Ignoring the Safe Areas will extend a view to fill the whole scene.") .frame(maxWidth: .infinity) .padding() .foregroundColor(.white) .background(Color.green)
                //3 pushes view up.
                Spacer()
                
            } .font(.title)
            
        }
        
        // Demo for 3
        ZStack(alignment: .topLeading) {
            Image("pinkRose")
                .resizable() // Allows image to change size
                .scaledToFit() // Keeps image the same aspect ratio when resizing
            Rectangle()
                .fill(Color.white.opacity(0.6))
                .frame(maxWidth: .infinity, maxHeight: 50)
            Text("Pink Rose")
                .font(.title)
                .padding()
        }
        
    }
}

struct ZStackDemos_Previews: PreviewProvider {
    static var previews: some View {
        ZStackDemos()
            .previewDevice("iPhone 12 Pro")
    }
}
