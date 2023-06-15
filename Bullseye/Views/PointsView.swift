//
//  PointsView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 13/06/23.
//

import SwiftUI

struct PointsView: View {
    @Binding var sliderValue: Double
    @Binding var isAlertVisible: Bool
    @Binding var game: Game
    
    private var sliderValueInt: Int {
        Int(sliderValue.rounded())
    }
    
    private var points: Int {
        game.points(for: sliderValueInt)
    }
    
    var body: some View {
        VStack(spacing: 10) {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: "\(sliderValueInt)")
            BodyText(text: "You scored \(points) points\n🎉🎉🎉")
            Button {
                withAnimation {
                    isAlertVisible.toggle()
                }

                game.startNewRound(with: points)
            } label: {
                ButtonText(text: "Start New Round")
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 32)
        .frame(maxWidth: 300)
        .background(Color.backgroundColor)
        .cornerRadius(21)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(sliderValue: .constant(50), isAlertVisible: .constant(false), game: .constant(Game()))
        PointsView(sliderValue: .constant(50), isAlertVisible: .constant(false), game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}
