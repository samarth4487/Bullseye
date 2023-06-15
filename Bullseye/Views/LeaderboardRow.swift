//
//  LeaderboardRow.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 15/06/23.
//

import SwiftUI

struct LeaderboardRow: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack {
            RoundedTextView(text: String(index))
            Spacer()
            ScoreText(score: score)
                .frame(width: 50)
            Spacer()
            DateText(date: date)
                .frame(width: 170)
        }
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color.leaderboardRowColor, lineWidth: 2)
        )
        .padding(.horizontal)
        .frame(maxWidth: 480)
    }
}

struct LeaderboardRow_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardRow(index: 1, score: 1, date: Date())
    }
}
