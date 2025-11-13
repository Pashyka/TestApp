//
//  ContentView.swift
//  TestApp
//
//  Created by Павел on 13.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var imageColor: Color = .orange

    var body: some View {
        VStack {
            Text("That is Football to You?")
                .foregroundStyle(.green)
                .fontWeight(.thin)
                .font(.largeTitle)
            HStack {
                Image(systemName: "figure.american.football")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                Image(systemName: "figure.australian.football")
                    .resizable()
                    .foregroundStyle(.indigo)
                    .scaledToFit()
                Image(systemName: "figure.soccer")
                    .resizable()
                    .foregroundStyle(.purple)
                    .scaledToFit()
            }
            

        }
    }
}

#Preview {
    ContentView()
}
