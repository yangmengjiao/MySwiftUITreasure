//
//  VStackDemo.swift
//  SwiftBasic
//
//  Created by mengjiao on 9/21/21.
//

import SwiftUI

/*
 VStack :
1.it is pull-in container view in which you pass in up to ten views and it will compose them one below the next, going down the screen.
2 VStack can be nested within another VStack
3 By default, views in a VStack are center aligned.

 
 LazyVStack:
 1 "LazyVStacks can also have section headers and section footers that
 can be pinned so they only scroll when the next header/footer comes.
 
 2 "The LazyVStack is best used with many views that scroll off the screen.
 
 3 It’s “lazy” because if you have views scrolling off the screen, SwiftUI will not load them unless it needs to show them on the screen
 
 4 in my opinon, LazyVStack similar to tableview.
 
 Pinned Views
 1 only lazy vstack has this
 2 This is probably one of the biggest differences between the VStack and the LazyVStack - being able to pin a section header and footer
 3 Pinned views are are great for scrollable content. it is only avaialbe for : LazyVStack
 , LazyHStack, LazyVGrid, LazyHGrid.
 
 
 
 // Todo : found a demo with using scrollview and lazy vstack and pinned views.
 */
struct VStackDemo: View {
    var body: some View {
        //Demo1
//        VStack(alignment: .leading, spacing: 40) {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Divider()// Creates a thin line
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        }
        
        ScrollView {
            LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
//                ForEach(row) { row in
//
//                }
            }
        }
       
    }
}

struct VStackDemo_Previews: PreviewProvider {
    static var previews: some View {
        VStackDemo()
    }
}
