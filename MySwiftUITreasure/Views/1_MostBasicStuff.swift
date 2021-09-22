//
//  ContentView.swift
//  SwiftBasic
//
//  Created by mengjiao on 9/17/21.
//

// Here are all the basics. 
import SwiftUI

struct ContentView: View {
    //1. “body” is a read-only property, where "get {return}" omitted.
    //2. some keyword means the body's return type is a Opaque Types, which means the type of body can be Text Or Button or Anything.
    
    var body: some View {
        //3.but the return type Has to ALWAYS be the same type of View that is re   turned. If we have to return different type of View we have to use swiftui container like this.
        VStack {
            Text("Short description of what I am demonstrating goes here.") .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(Color.white)
                .padding() //4. If padding was after the background, it would add space around the blue background.
                .background(Color.blue) //  5 child's modifier override parent's. that is why the Text view's background is blue not yellow
            
            Button("click me") {
                print("this is a button.")
            }
            
            //6 this shows a system image, add we can apply font on it.
            Image(systemName: "circle")
                .font(.title3)
            
            // 7 under stand the layer sequence
            Image(systemName: "circle")
                // Show an image from Assets.xcassets
                .opacity(0.7) // Make image only 70% solid
                .background(Color.red.opacity(0.3)) // Layer behind image
                .background(Color.yellow.opacity(0.3)) // Layer behind red
                .background(Color.blue.opacity(0.3)) // Layer behind yellow
            
            // 8 two ways to generate rounded rectangle
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(Color.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20) // Create the shape
                .foregroundColor(Color.blue)) // Make shape blue .padding()
            
            Text("This text has a color with a corner radius")
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue) // Use a color as the background layer
            .cornerRadius(20) // Rounded corners on whole text view
            
            // 9 there are two types of views
            //- pull in views : tend to center themselves within their parent container eg: Text
            //- pudh out views : push out to fill up all available space within their parent.
            // eg: Color
            
            VStack {
                Text("pull in views")  // pull view
                Color.red // push out view.
            }
            .background(Color.blue)
            
        }
        .background(Color.orange)
        
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
