//
//  TextViews.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 31/05/23.
//

import SwiftUI

struct InstructionText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .font(.footnote)
            .lineSpacing(4)
            .kerning(2)
            .foregroundColor(Color.textColor)
    }
}

struct BigNumberText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .kerning(-1)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color.textColor)
    }
}

struct SliderText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color.textColor)
    }
}

struct LabelText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color.textColor)
    }
}

struct BodyText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12)
    }
}

struct ButtonText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(12)
    }
}

struct ScoreText: View {
    let score: Int
    
    var body: some View {
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color.textColor)
            .font(.title3)
    }
}

struct DateText: View {
    let date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color.textColor)
            .font(.title3)
    }
}

struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color.textColor)
            .font(.title)
            .fontWeight(.black)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Sample")
            BigNumberText(text: "Sample")
            SliderText(text: "Sample")
            LabelText(text: "Sample")
            BodyText(text: "Sample")
            ButtonText(text: "Sample")
            ScoreText(score: 100)
            DateText(date: Date())
            BigBoldText(text: "Sample")
        }
    }
}
