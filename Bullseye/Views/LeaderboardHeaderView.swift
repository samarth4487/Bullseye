//
//  LeaderboardHeaderView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 15/06/23.
//

import SwiftUI

struct LeaderboardHeaderView: View {
    var body: some View {
        BigBoldText(text: "Leaderboard")
            .padding(.horizontal)
    }
}

struct LeaderboardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardHeaderView()
    }
}
