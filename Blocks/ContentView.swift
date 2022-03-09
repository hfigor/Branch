//
//  ContentView.swift
//  Blocks
//
//  Created by Frank Cipolla on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            NavigationView {
                List(0 ..< 5) { item in
                    NavigationLink(destination: Text("Destination")) {
                        NewsCell()
                    }
                    
                }
                .navigationTitle("News")
            }
            .tabItem {Label("Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"newspaper.fill")}
            .tag(1)
            NavigationView {
                Text("Tab Content 2")
                    .navigationTitle("Products")
            }
            .tabItem {Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"cart.fill"/*@END_MENU_TOKEN@*/)}
            .tag(2)
            NavigationView {
                Text("Tab Content 3")
                    .navigationTitle("Chat")
            }
            .tabItem { Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"message.fill"/*@END_MENU_TOKEN@*/)}
            .tag(3)
            
        }
        .accentColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell()
           // .fixedSize()
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
            //.environment(\.sizeCategory, .medium)
            
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

struct NewsCell: View {
    var body: some View {
        VStack(alignment: .leading) {
                Text("Text")
                    .font(.title2)
                    .fontWeight(.bold)
                Text(/*@START_MENU_TOKEN@*/"Tertiary Text"/*@END_MENU_TOKEN@*/)
        }
    }
}
