import SwiftUI

struct ContentView: View {
    // Сообщения и изображения должны совпадать по количеству
    private let messages = [
        "Некифор и чуваки",
        "Какой-то чувак",
        "Кто это?"
    ]
    private let images = [
        "image0",
        "image1",
        "image2"
    ]
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(images[currentIndex])
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .frame(width: 300, height: 300)
                .shadow(radius: 30)
            Text(messages[currentIndex])
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Click Me") {
                // Безопасный переход к следующему элементу
                currentIndex = (currentIndex + 1) % min(messages.count, images.count)
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
