//
//  AgentCard.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct AgentCard: View {
    var agent : Agent
    
    var body: some View {
        VStack{

            AsyncImage(url: URL(string: agent.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .center) {
                        Text(agent.name)
                            .font(.headline)
                            .foregroundColor(.red)
                            .shadow(color: .black, radius: 3, x: 0, y:0)
                            .padding()
                            .background(Color(.black))
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .center) {
                        Text(agent.name)
                            .font(.headline)
                            .foregroundColor(.red)
                            .shadow(color: .black, radius: 3, x: 0, y:0)
                            .padding()
                    }
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.35), Color(.black)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct AgentCard_Preview: PreviewProvider {
    static var previews: some View {
        AgentCard(agent: Agent.all[0])
    }
}
