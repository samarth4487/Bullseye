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
        XCTAssertEqual(score, 100)
    }
}
