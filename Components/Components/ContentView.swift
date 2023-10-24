import SwiftUI

// This component creates a flashcard app with a simple card flipping animation.
// The front side of the card displays a question, and the back side displays the answer.
// Users can tap on the card to flip it and reveal the answer.

struct ContentView: View {
    @State private var isFlipped = false
    @State private var cardRotation = 0.0
    
    // 1. Define the flashcard content
    let question = "What is the capital of NY?"
    let answer = "Paris"
    
    // 2. Define the card appearance
    let cardWidth: CGFloat = 300
    let cardHeight: CGFloat = 200
    let cardCornerRadius: CGFloat = 20
    let cardBackgroundColor = Color.white
    let cardShadowColor = Color.black.opacity(0.2)
    
    var body: some View {
        // 3. Create the card container
        ZStack {
            RoundedRectangle(cornerRadius: cardCornerRadius)
                .fill(cardBackgroundColor)
                .frame(width: cardWidth, height: cardHeight)
                .shadow(color: cardShadowColor, radius: 10, x: 0, y: 5)
            
            // 4. Display the question or the answer depending on the card's state
            if isFlipped {
                Text(answer)
                    .font(.largeTitle)
                    .bold()
            } else {
                Text(question)
                    .font(.title)
                    .bold()
            }
        }
        // 5. Add the card flipping animation
        .rotation3DEffect(
            .degrees(cardRotation),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
        .onTapGesture {
            // 5.1. Trigger the card flip
            withAnimation {
                cardRotation += 180
            }
            
            // 5.2. Toggle the card's state
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                isFlipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}