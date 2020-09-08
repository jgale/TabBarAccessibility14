//
//  ContentView.swift
//  TabBarAccessibility14
//
//  Created by Jeremy Gale on 2020-09-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            Text("Explore")
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
            Text("To Do")
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("To Do")
                }
            Text("About")
                .tabItem {
                    Image(systemName: "gear")
                    Text("About")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
