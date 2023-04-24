//
//  Game.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 14/04/23.
//

import Foundation

struct Game {
    private let maxScore = 100
    private let score: Int = 0
    private let round: Int = 1
    
    let target: Int = Int.random(in: 1 ... 100)
    
    func points(for sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        return 100 - difference
    }
}
