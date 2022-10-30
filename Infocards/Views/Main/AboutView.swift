//
//  AboutView.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import SwiftUI

struct AboutView: View {
    var body: some View{
        NavigationView {
            Text("This is a personal project. \n    Please do not sue me.")
                .padding()
                .navigationTitle("About this app")
        }
        .navigationViewStyle(.stack)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
