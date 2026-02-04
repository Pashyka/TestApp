import SwiftUI

struct ContentView: View {
    private struct Slide {
        let message: String
        let imageName: String
    }

    private let slides: [Slide] = [
        Slide(message: "Некифор и чуваки", imageName: "image0"),
        Slide(message: "Какой-то чувак", imageName: "image1"),
        Slide(message: "Кто это?", imageName: "image2")
    ]
    
    @State private var currentIndex = 0

    private var currentSlide: Slide? {
        guard !slides.isEmpty else { return nil }
        return slides[currentIndex % slides.count]
    }
    
    var body: some View {
        VStack {
            Spacer()
            if let currentSlide {
                Image(currentSlide.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(width: 350, height: 350)
                    .shadow(radius: 30)
                    .accessibilityLabel(Text(currentSlide.message))
                Text(currentSlide.message)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.red)
                    .multilineTextAlignment(.center)
            } else {
                Text("Нет доступных изображений")
                    .font(.title2)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            Button("Click Me") {
                // Безопасный переход к следующему элементу
                guard !slides.isEmpty else { return }
                currentIndex = (currentIndex + 1) % slides.count
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
