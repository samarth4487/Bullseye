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
    
    var body: some View {
        VStack {
            HStack {
                RoundedButton(image: Image.list) {
                    
                }
                
                Spacer()
                
                RoundedButton(image: Image.retry) {
                    
                }
            }
            .padding()
            
            Spacer()
            
            InstructionText(text: Constant.instruction)
                .padding(.horizontal)
            
            BigNumberText(text: String(game.target))
            
            SliderView(sliderValue: $sliderValue)
                .padding()

            PrimaryButton(text: Constant.hitMe, isAlertVisible: $isAlertVisible, sliderValue: $sliderValue, game: $game)
            
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
