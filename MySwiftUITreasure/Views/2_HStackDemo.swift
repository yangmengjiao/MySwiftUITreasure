//
//  HStackDemo.swift
//  SwiftBasic
//
//  Created by mengjiao on 9/21/21.
//

/*
 HStack :
 1 . It is a pull-in container view in which you pass in up to ten views and it will compose them side-by-side.
 2 Stack will horizontally arrange other views within it
 3 By default, views within an HStack are vertically aligned in the center
 
 
 LazyHStack:
 1 won't load untill it shows to screen.
 2 when used by itself, you won't notice that much different with HStack
 3 Notice the LazyHStack pushes out vertically.
 4 he LazyHStack is best used with many views that scroll off the screen. which increases
 performance.
 5 Unless you have a LOT of views, you will probably notice no difference in performance between HStacks and LazyHStacks.
 //  // Todo : found a demo with using scrollview and lazy hstack and pinned views.
 */

import SwiftUI

struct HStackDemo: View {
    var body: some View {
        // 1  alignment: bottom won't really align the text, there are two other align options (firstTextBaseline, lastTextBaseline) to help alignment
        HStack(alignment: .lastTextBaseline) {
            Text("alignment alignment!")
            Text("alignment! alignment")
                .font(.largeTitle)
        }
        
        // 2  HStacks are views that can also have modifiers applied to them
        HStack {
            Text("Leading")
            Text("Middle")
            Text("Trailing")
        }
        .padding()
        .border(Color.orange) // Create a 2 point border using the color specified
        
        
        // 3 priorities :
       /* When using a horizontal stack with text views within it, there’s a chance that text might truncate if you are not allowing them to wrap. In this case, you can prioritize which one will truncate last with layout priority. The default value is 0. The higher the number, the higher the priority to have enough space to not be truncated.
        */
        HStack {
            Text("SwiftUI") .font(.largeTitle).lineLimit(1) // Don't let text wrap
            Image(systemName: "circle") .resizable() .frame(width: 80, height: 80)
            Text("Bringsdd")
                .font(.largeTitle)
                .lineLimit(1)
                .layoutPriority(1)
        }
        .padding([.horizontal])
        
    }
}

struct HStackDemo_Previews: PreviewProvider {
    static var previews: some View {
        HStackDemo()
    }
}
