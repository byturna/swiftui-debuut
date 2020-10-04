//
//  ContentView.swift
//  Debuut
//
//  Created by Metehan Turna on 03/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "sparkles.rectangle.stack.fill")
                    Text("Home")
                }

            Categories()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Categories")
                }
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
