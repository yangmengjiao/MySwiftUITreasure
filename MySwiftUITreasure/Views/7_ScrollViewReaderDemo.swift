//
//  ScrollViewReaderDemo.swift
//  MySwiftUITreasure
//
//  Created by mengjiao on 9/22/21.
//

import SwiftUI

struct ScrollViewReaderDemo: View {
    var body: some View {
        NavigationView {
            Contacts()
                .navigationTitle("Contacts")
        }
    }
}

struct ScrollViewReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderDemo()
    }
}

struct Contacts: View {
    @State var scrollViewOffSet: CGFloat = 0
    
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView(.vertical, showsIndicators: false, content: {
                LazyVStack(spacing: 25) {
                    ForEach(1...25, id: \.self) { index in
                        // Demo Row
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.largeTitle)
                                .frame(width: 60, height: 60)
                                .background(Color.gray)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Marry Tompshon")
                                    .bold()
                                    .font(.system(size: 20))
                                Text("642-193-2939")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding(.trailing, 80)
                            }
                        }
                        // give each row a id.
                        .id(index)
                    }
                }
                .padding()
                .overlay(
                    //use geometry read to get scrollview offset
                    GeometryReader { proxy -> Color in
                        print(scrollViewOffSet      )
                        scrollViewOffSet = proxy.frame(in: .global).minY
                        return Color.clear
                    }
                    .frame(width: 0, height: 0, alignment: .top)
                )
            })
            // floating button
            .overlay(
                Button(action: {
                    // animation
                    withAnimation(.spring()) {
                        scrollViewProxy.scrollTo(1, anchor: .bottom)
                    }
                }, label: {
                    Image(systemName: "arrow.up")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .opacity(-scrollViewOffSet > 250 ? 1 : 0)
                        .animation(.easeOut)
                })
                .padding()
                , alignment: .bottomTrailing
            )
            
        }
        
    }
}
