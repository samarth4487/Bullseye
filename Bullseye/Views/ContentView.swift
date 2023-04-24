//
//  ContentView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 13/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertVisible: Bool = false
    @State private var sliderValue: Double = 50
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .font(.footnote)
                .lineSpacing(4)
                .kerning(2)
            
            Text("\(game.target)")
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                    .bold()
                
                Slider(value: $sliderValue, in: 1 ... 100)
                
                Text("100")
                    .bold()
            }
            
            Button {
                isAlertVisible.toggle()
            } label: {
                Text("Hit me")
            }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
