//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Samarth Paboowal on 13/04/23.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }
    
    func testInputGreaterThanTarget() throws {
        let guess = game.target + 5
        let score = game.points(for: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testInputSmallerThanTarget() throws {
        let guess = game.target - 5
        let score = game.points(for: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testInputEqualToTarget() throws {
        let guess = game.target
        let score = game.points(for: guess)
        XCTAssertEqual(score, 200)
    }
    
    func testStartNewRound() throws {
        let score = 100
        game.startNewRound(with: score)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
    func testRestart() throws {
        game.restart()
        XCTAssertEqual(game.score, 0)
        XCTAssertEqual(game.round, 1)
    }
    
    func testLeaderboard() throws {
        XCTAssertEqual(game.leaderboardEntries.count, 0)
        game.startNewRound(with: 100)
        XCTAssertEqual(game.leaderboardEntries.count, 1)
        XCTAssertEqual(game.leaderboardEntries[0].points, 100)
        
        game.startNewRound(with: 200)
        XCTAssertEqual(game.leaderboardEntries.count, 2)
        XCTAssertEqual(game.leaderboardEntries[0].points, 200)
        XCTAssertEqual(game.leaderboardEntries[1].points, 100)
    }
}
