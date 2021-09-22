//
//  ButtonDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/22/21.
//

import SwiftUI

// Here are some button demos
struct ButtonDemo: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                //Demo 1 : Default text-only buttons.
                Button("Click") {
                    print("Clicked")
                }
                
                // Demo 2 : Use this initializer to customize the text.
                Button(action: {
                    print("Clicekd")
                }, label: {
                    Text("Click")
                        .font(.largeTitle)
                })
                
                // Demo 3 : Button With Shadow
                Button(action: {
                    print("Clicekd")
                }, label: {
                    Text("Button With Shadow ")
                        .padding(12)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(8)
                        .shadow(color: Color.purple, radius: 10, y: 5)
                })
                
                Button(action: {}, label: {
                    Text("Capsule Button")
                        .padding(12)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .clipShape(Capsule())
                })
                
                Button(action: {}, label: {
                    Text("Border Button")
                        .padding()
                        .border(Color.purple)
                })
                
                Button(action: {}, label: {
                    Text("Border Button")
                        .padding()
                        .border(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action: {}) {
                    Text("Stroke Button") .padding() .background( RoundedRectangle(cornerRadius: 10) .stroke(Color.purple, lineWidth: 2) )
                }
                
                Button(action: {}) {
                    Text("Button With Symbol")
                        .padding(.horizontal)
                    Image(systemName: "gift.fill")
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(8)
                
                Button(action: {}) {
                    VStack {
                        Image(systemName: "video.fill")
                        Text("Record")
                            .padding(.horizontal)
                    }
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(8)
                
                Button(action: {}) {
                    Image("pinkRose")
                        .frame(width: 200, height: 40, alignment: .center)
                    
                }
                .cornerRadius(80)
            }
            
        }
        FloatingActionButtonDemo()
    }
}

struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}


struct FloatingActionButtonDemo: View {
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "plus") .font(.title) } .padding(20) .foregroundColor(Color.white) .background(Color.purple)
                            .clipShape(Circle())
                        
                    }
                    .padding(.trailing, 30)
                    .padding(.bottom, 30)
                }
            }
        }
    }
}
