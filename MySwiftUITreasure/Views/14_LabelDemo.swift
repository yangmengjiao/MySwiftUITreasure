//
//  LabelDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/30/21.
//

import SwiftUI
/*
 Label :
 Help handle the layout, spacing and formatting of an image and text that you pass into it.
 
 Demos
 Demo 1 : Use lable to help list a list of images. and they will align perfectly.
 Demo 2 : Display image with label.
 */
struct LabelDemo: View {
    var body: some View {
        VStack(spacing: 20) {
            //Demo 1
            List {
                Label("Edit", systemImage: "rectangle.and.pencil.and.ellipsis")
                    .listItemTint(.pink)
                Label("Archives", systemImage: "archivebox.circle")
                    .listItemTint(.orange)
                Label("Document", systemImage: "doc.richtext")
                    .listItemTint(.purple)
                Label("Camera Settings", systemImage: "camera.badge.ellipsis")
                    // ListItemTint has no effect in this style of List. It will work for SidebarListStyle.
                    .listItemTint(.monochrome)
            }
            //The SidebarListStyle is commonly used as a side menu when in landscape mode, on iPads and macOS apps.
            .listStyle(SidebarListStyle())
            
            
            //Demo2
            Label("pinkRose", image: "pinkRose")
            .border(Color.pink, width: 3)
        }
    }
}

struct LabelDemo_Previews: PreviewProvider {
    static var previews: some View {
        LabelDemo()
    }
}
