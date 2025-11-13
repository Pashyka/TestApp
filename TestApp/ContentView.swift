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
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .foregroundStyle(.red)
                .fontWeight(.heavy)
                .font(.largeTitle)
            Button("Click me!") {
                message = "Hello!"
            }
        }
    }
}

#Preview {
    ContentView()
}
