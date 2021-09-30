//
//  9_ColorPickerDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/23/21.
//

import SwiftUI

// ColorPicker allows you to give users the ability to select a color.
struct ColorPickerDemo: View {
    @State var selectedColor = Color.red
    var body: some View {
        ZStack {
            selectedColor
            ColorPicker("Choose a color for background", selection: $selectedColor, supportsOpacity: false)
                .padding()
        }
    }
}

struct ColorPickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerDemo()
    }
}
