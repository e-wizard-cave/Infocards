//
//  TabBar.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("Search", systemImage: "sparkle.magnifyingglass")
                }
            AboutView()
                .tabItem{
                    Label("About", systemImage: "note.text")
                }
            
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
