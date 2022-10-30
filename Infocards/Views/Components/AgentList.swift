//
//  AgentList.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct AgentList: View {
    var agent: [Agent]
    
    var body: some View {
        VStack {
            HStack{
                Text("Agents")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                Spacer()
               
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(agent) { agent in
                    NavigationLink(destination: AgentView(agent: agent)){
                        AgentCard(agent: agent)
                    }
                    
                }
            }
        }
        .padding(.horizontal)
        
    }
}

struct AgentList_Previews: PreviewProvider {
    static var previews: some View {
        AgentList(agent: Agent.all)
    }
}
