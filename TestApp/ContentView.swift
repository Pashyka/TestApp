//
//  ContentView.swift
//  TestApp
//
//  Created by Павел on 13.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var image = ""
    
    var body: some View {
        VStack{
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .frame(width: 350, height: 350)
                .shadow(radius: 10)
            Text(text)
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.red)
            Spacer()
            HStack {
                Button("Click Me") {
                    let message1 = "Какой-то чувак"
                    let message2 = "Невъебические парни"
                    let image1 = "Pashtet"
                    let image2 = "Vse"
                    text = (text == message1 ? message2 : message1)
                    image = (image == image1 ? image2 : image1)
                }
            }
            .buttonStyle(.glass)
            .tint(.purple)
            .fontWeight(.heavy)
        }
    }
}

#Preview {
    ContentView()
}
