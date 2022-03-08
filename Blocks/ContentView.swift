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
                Text("Tab Content 1")
            .navigationTitle("News")
            }
            .tabItem { Text("News") }.tag(1)
            NavigationView {
                Text("Tab Content 2")
            .navigationTitle("Products")
            }
            .tabItem { Text("Products") }.tag(2)
            NavigationView {
                Text("Tab Content 3")
            .navigationTitle("Chat")
            }
            .tabItem { Text("Chat") }.tag(3)

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
