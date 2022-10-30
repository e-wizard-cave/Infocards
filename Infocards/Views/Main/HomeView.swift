//
//  HomeView.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View{
        NavigationView {
            ScrollView{
                AgentList(agent: Agent.all)
                
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
