//
//  ButtonViews.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 31/05/23.
//

import SwiftUI

struct PrimaryButton: View {
    let text: String
    
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button {
            isAlertVisible.toggle()
        } label: {
            Text(text.uppercased())
        }
        .padding(20)
        .background(
            ZStack {
                Color.buttonColor
                LinearGradient(colors: [Color.white.opacity(0.3), Color.clear], startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21)
        .bold()
        .font(.title3)
        .alert(
            "Hello there!",
            isPresented: $isAlertVisible,
            actions: {
                Button {
                    
                } label: {
                    Text("Awesome")
                }

            },
            message: {
                let roundedSliderValue = Int(sliderValue.rounded())
                Text("You scored \(game.points(for: roundedSliderValue)) points.")
            }
        )
    }
}

struct RoundedButton: View {
    let image: Image
    let action: () -> Void
    
    var body: some View {
        RoundedImageView(image: image)
            .onTapGesture {
                action()
            }
    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 8) {
            PrimaryButton(text: "Sample", isAlertVisible: .constant(false), sliderValue: .constant(50), game: .constant(Game()))
            RoundedButton(image: Image.list, action: {})
        }
    }
}
