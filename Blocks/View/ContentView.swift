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
                List(Article.mocks) { article in
                    NavigationLink(destination: Text("Destination")) {
                        NewsCell(article: article)
                    }
                    
                }
                .navigationTitle("News")
            }
            .tabItem {Label("News", systemImage: "newspaper.fill")}
            .tag(1)
            NavigationView {
                List(Product.maocks) { product in
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        ProductCell(product: product )
                    }
                }
                .navigationTitle("Products")
            }
            .tabItem {Label("Products", systemImage: /*@START_MENU_TOKEN@*/"cart.fill"/*@END_MENU_TOKEN@*/)}
            .tag(2)
            NavigationView {
                Text("Tab Content 3")
                    .navigationTitle("Chat")
            }
            .tabItem { Label("Chat", systemImage: /*@START_MENU_TOKEN@*/"message.fill"/*@END_MENU_TOKEN@*/)}
            .tag(3)
            
        }
        .accentColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

