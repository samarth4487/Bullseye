//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 31/05/23.
//

import SwiftUI

struct RoundedImageView: View {
    let image: Image
    
    var body: some View {
        image
            .font(.title)
            .foregroundColor(Color.textColor)
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color.buttonStrokeColor, lineWidth: 2)
            )
    }
}

struct RoundedRectTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68, height: 56)
            .foregroundColor(Color.textColor)
            .lineLimit(1)
            .minimumScaleFactor(0.1)
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .strokeBorder(Color.buttonStrokeColor, lineWidth: 2)
            )
    }
}

struct RoundedTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
            .foregroundColor(Color.textColor)
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color.leaderboardRowColor, lineWidth: 2)
            )
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            RoundedTextView(text: "999")
            RoundedRectTextView(text: "999")
            RoundedImageView(image: Image.list)
        }
    }
}
