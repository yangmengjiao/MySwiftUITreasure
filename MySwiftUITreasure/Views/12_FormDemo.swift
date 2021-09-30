//
//  FormDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/23/21.
//

import SwiftUI

/*
 From : 这个并不是用于获取输入的表格， 而是更像是一个table，多用于setting界面。
 
 1 it is good for showing settings, options, or getting some user input, it is a push-out view.
 2 Has built-in scroll view if the contents exceed the height of the screen.
 3 The cells will grow to fit the content
 
 
 */
struct FormDemo: View {
    @State private var trebleOn = true

    @State private var bassOn = false

    @State private var levels = 0.5
    
    var body: some View {
        Form {
            // Form With DisclosureGroup 
            DisclosureGroup("Audio Settings") {
                VStack {
                    Toggle("Treble on ", isOn: $trebleOn)
                    Toggle("Basse on ", isOn: $bassOn)
                    Slider(value: $levels)
                }
            }
            
            // Make use of inset.
            Section(header: Text("Row Inset Uses")
                        .font(.title).foregroundColor(.gray)) {
                Text("Other possible uses could be for indenting")
                Text("Indent Level 1")
                    .listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                Text("Indent Level 2")
                    .listRowInsets(EdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0))
            }
            
            // Section with footer.
            Section(header: Text(""), footer: Text("Total: $5,600.00").bold()) {
                
                Text("Here is an example of a section footer")
            }
            
            // Make use of listRowBackground
            Section(header: SectionTextAndImage(name: "A Header", image: "circle")) {
                Text("Cell 1")
                Text("Cell 2")
                Text("Cell 3")
                    .listRowBackground(Color.red)
                Text("Cell 4")
                    // notice Cell 5 got hide, becaue the image that added on Cell 4.
                    .listRowBackground(Image("pinkRose")
                    .blur(radius: 3))
                Text("Cell 5")
            }
            //we can add listRowBackground to either row or section.
            .listRowBackground(Color.gray)
          
            
        }
       
    }
}

struct FormDemo_Previews: PreviewProvider {
    static var previews: some View {
        FormDemo()
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(Color.purple)
    }
}
