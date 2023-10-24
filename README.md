# Flashcard App for iOS

This iOS app is a simple flashcard app with a card flipping animation. The front side of the card displays a question, and the back side displays the answer. Users can tap on the card to flip it and reveal the answer. The app is built using SwiftUI and Trace AI.

![App Preview](https://login.trace.zip/storage/v1/object/public/trace/6592e95f-744d-4aee-bb20-1e043dd10325)

## Features

- Card flipping animation
- Customizable card appearance
- Easy to modify flashcard content

## How to Build

1. Clone the repository to your local machine.
2. Open the Xcode project file.
3. Build and run the app on a simulator or a physical device.

## App Structure

The app consists of a single `ContentView` struct that defines the flashcard content, card appearance, and card flipping animation.

### Flashcard Content

The flashcard content is defined by two variables: `question` and `answer`. You can easily modify these variables to change the content of the flashcard.

### Card Appearance

The card appearance is defined by several variables, such as `cardWidth`, `cardHeight`, `cardCornerRadius`, `cardBackgroundColor`, and `cardShadowColor`. You can customize the appearance of the card by modifying these variables.

### Card Flipping Animation

The card flipping animation is achieved using the `rotation3DEffect` modifier and an `onTapGesture` to trigger the flip. The card's state is toggled between the question and answer using the `isFlipped` variable.

## Demo

You can demo this project at [https://trace.zip/c/6592e95f-744d-4aee-bb20-1e043dd10325](https://trace.zip/c/6592e95f-744d-4aee-bb20-1e043dd10325).

## Built with

- [Trace AI](https://trace.zip)

## License

This project is licensed under the MIT License.