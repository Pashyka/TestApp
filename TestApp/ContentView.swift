//
//  ContentView.swift
//  TestApp
//
//  Created by Павел on 13.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a programmer!"
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .fontWeight(.ultraLight)
                .font(.largeTitle)
            Spacer()
            HStack {
                Button("Awesome!") {
                    message = "Awesome!"
                }
                Button("Great!") {
                    message = "Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
    }
}

#Preview {
    ContentView()
}
