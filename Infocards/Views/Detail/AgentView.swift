//
//  AgentView.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct AgentView: View {
    var agent: Agent
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: agent.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    

            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            .frame(height: 600)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.35), Color(.black)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(agent.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .center, spacing: 30){
                    Text("Role: " + agent.category)
                        .font(.headline)
                        .bold()
                    VStack(alignment: .leading, spacing: 20){
                        Text(agent.description)
                            .font(.headline)
                        
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct AgentView_Previews: PreviewProvider {
    static var previews: some View {
        AgentView(agent: Agent.all[0])
    }
}
