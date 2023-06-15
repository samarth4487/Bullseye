//
//  LeaderboardLabelView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 15/06/23.
//

import SwiftUI

struct LeaderboardLabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 56)
            Spacer()
            LabelText(text: "Score")
                .frame(width: 50)
            Spacer()
            LabelText(text: "Date")
                .frame(width: 170)
        }
        .padding(.horizontal)
        .frame(maxWidth: 480)
    }
}

struct LeaderboardLabelView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardLabelView()
    }
}
