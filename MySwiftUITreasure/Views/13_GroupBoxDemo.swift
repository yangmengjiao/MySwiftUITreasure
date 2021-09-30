//
//  ContentView.swift
//  demoApp
//
//  Created by Mengjiao Yang on 9/30/21.
//

import SwiftUI

struct GroupBoxDemo: View {
    @State var userName: String
    @State var password: String
    
    var body: some View {
        VStack {
            GroupBox {
                Text("Login")
                TextField("UserName", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            .padding()
            .font(.title)
            
            Spacer()
            
            GroupBox(label: Text("Fruits")
                        .font(.headline)
                        .fontWeight(.bold), content: {
               Text("Apple")
                Text("Banana")
            })
            Spacer()
        }
    }
}

struct GroupBoxDemo_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxDemo(userName: "", password: "")
    }
}
