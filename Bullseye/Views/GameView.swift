//
//  GameView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 13/04/23.
//

import SwiftUI

struct GameView: View {
    @State private var isAlertVisible: Bool = false
    @State private var sliderValue: Double = 50
    @State private var game: Game = Game()
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            ForEach(1 ... 5, id: \.self) { index in
                let size = CGFloat(index * 100)
                let opacity = colorScheme == .light ? 0.3 : 0.05
                Circle()
                    .stroke(lineWidth: 20)
                    .fill(
                        RadialGradient(colors: [Color.ringsColor.opacity(opacity * 0.8), Color.ringsColor.opacity(0)], center: .center, startRadius: 100, endRadius: 300)
                    )
                    .frame(width: size, height: size)
            }
            
            VStack {
                HStack {
                    RoundedButton(image: Image.retry) {
                        game.restart()
                    }
                    
                    Spacer()
                    
                    RoundedButton(image: Image.list) {
                        
                    }
                }
                .padding()
                
                Spacer()
                
                InstructionText(text: Constant.instruction)
                    .padding(.horizontal)
                
                BigNumberText(text: String(game.target))
                
                if isAlertVisible {
                    PointsView(sliderValue: $sliderValue, isAlertVisible: $isAlertVisible, game: $game)
                        .transition(.scale)
                } else {
                    SliderView(sliderValue: $sliderValue)
                        .padding()
                        .transition(.scale)
                    
                    PrimaryButton(text: Constant.hitMe) {
                        withAnimation {
                            isAlertVisible.toggle()
                        }
                    }
                    .transition(.scale)
                }
                
                Spacer()
                
                HStack {
                    VStack(spacing: 5) {
                        LabelText(text: Constant.score)
                        RoundedTextView(text: String(game.score))
                    }
                    
                    Spacer()
                    
                    VStack {
                        LabelText(text: Constant.round)
                        RoundedTextView(text: String(game.round))
                    }
                }
                .padding()
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
        }
        .background(Color.backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
        GameView()
            .preferredColorScheme(.dark)
    }
}
