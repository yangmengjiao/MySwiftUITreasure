//
//  LinkDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/30/21.
//

import SwiftUI
/*
 Link : Similar to the Button or the NavigationLink except it can navigate you to outside your app.
 
 Demo : Navigate to apple store
 */
struct LinkDemo: View {
    var body: some View {
        VStack(spacing: 40) {
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                HStack(spacing: 20.0) {
                    Image(systemName: "applelogo")
                    Text("Go to Apple")
                }
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Capsule()
                                .fill(Color.blue)
                                .shadow(radius: 8, y: 18))
            })
        }
        .font(.title)
    }
}

struct LinkDemo_Previews: PreviewProvider {
    static var previews: some View {
        LinkDemo()
    }
}
