//
//  Game.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 14/04/23.
//

import Foundation

struct Game {
    var score: Int = 0
    var round: Int = 1
    var target: Int = Int.random(in: 1 ... 100)
    var leaderboardEntries = [LeaderboardEntry]()
    
    private mutating func generateNewTarget() {
        target = Int.random(in: 1 ... 100)
    }
    
    func points(for sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        var bonus = 0
        
        if difference == 0 {
            bonus = 100
        }
        
        return 100 + bonus - difference
    }
    
    mutating func startNewRound(with points: Int) {
        addToLeaderboard(points: points)
        score += points
        round += 1
        generateNewTarget()
    }
    
    mutating func restart() {
        score = 0
        round = 1
        generateNewTarget()
    }
    
    mutating func addToLeaderboard(points: Int) {
        let leaderboardEntry = LeaderboardEntry(points: points, date: Date())
        leaderboardEntries.append(leaderboardEntry)
        leaderboardEntries.sort { $0.points > $1.points }
    }
}

struct LeaderboardEntry {
    let points: Int
    let date: Date
}
