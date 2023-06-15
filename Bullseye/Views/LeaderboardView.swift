//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 15/06/23.
//

import SwiftUI

struct LeaderboardView: View {
    @Binding var game: Game
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                LeaderboardHeaderView()
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                LeaderboardLabelView()
                
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(game.leaderboardEntries.indices, id: \.self) { index in
                            let leaderboardEntry = game.leaderboardEntries[index]
                            LeaderboardRow(index: index + 1, score: leaderboardEntry.points, date: leaderboardEntry.date)
                        }
                    }
                }
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView(game: .constant(Game()))
        LeaderboardView(game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}
