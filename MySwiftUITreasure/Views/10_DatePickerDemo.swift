//
//  DataPickerDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/23/21.
//

import SwiftUI

// in ios 14, DatePicker is a push out view
struct DatePickerDemo: View {
    @State var pickedDate = Date()
    
    var body: some View {
        VStack(spacing: 50) {
            DatePicker("Birthday", selection: $pickedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .accentColor(.green)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .opacity(0.1)
                                .shadow(radius: 1, x: 4, y: 4))
                .padding(.horizontal)
            DatePicker("Today", selection: $pickedDate, displayedComponents: .date)
                .frame(height: 50)
                .padding()
                .background(Rectangle()
                                .fill(Color.green)
                                .shadow(radius: 4)
                                .opacity(0.2))
        }
    }
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemo()
            
    }
}
