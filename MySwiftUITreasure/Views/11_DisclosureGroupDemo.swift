//
//  DisclosureGroupDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/23/21.
//

import SwiftUI

/*  DisclosureGroup : It gives you a way to expand and collapse views below it. it is a pull-in view
 
 
Demos :
 1 Apply it with child views that you want collapsed/expanded.
 
 2 Can Custom Label Views
 
 3 Can be nested
 
 */
struct DisclosureGroupDemo: View {
    @State var disclosureExpanded = false
    @State var disclosureExpanded2 = false
    
    var body: some View {
        VStack {
            // Demo 1
            DisclosureGroup("More Info", isExpanded: $disclosureExpanded) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .opacity(0.1)
                    .overlay(Text("More Info!"))
                    .frame(height: 200)
            }
            .padding()
            
            DisclosureGroup("Better Exampge", isExpanded: $disclosureExpanded2) {
                Text("hhafd fsfasd fdsf af afds fd fd afdf fsf aff af")
                    .font(.title2)
                    .padding()
            }
            .accentColor(.orange) // change the color or the " > "
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.orange.opacity(0.1)))
            .padding()
          
            //Demo 2
            DisclosureGroup(
                content: {
                Text("see, we can customize the lable of DisclosureGroup")
                },
                label: {
                    HStack {
                        Image(systemName: "person.fill")
                        Text("name")
                    }
                }
            )
            
            // Demo 3
            DisclosureGroup("Choose a type of food") {
                VStack {
                    DisclosureGroup("Fruit") {
                        VStack {
                            Text("Apple")
                            Text("Cherry")
                            Text("Banana")
                        }
                    }
                    DisclosureGroup("Vegetable") {
                        VStack {
                            Text("Tomato")
                            Text("Potato")
                            Text("Celery")
                        }
                    }
                }
                .padding()
            }
            
            Spacer()
        }
        .font(.title)
    }
}

struct DisclosureGroupDemo_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupDemo()
    }
}
