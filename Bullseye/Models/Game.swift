//
//  Game.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 14/04/23.
//

import Foundation

struct Game {
    var target: Int = 37
    var score: Int = 0
    var round: Int = 1
    
    func points(for sliderValue: Int) -> Int {
        return 100
    }
}
