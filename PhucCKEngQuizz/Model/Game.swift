//
//  Game.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import Foundation
import UIKit


class Game {
    var gameLevel : String = ""
    var gameScore : Int = 0
    var timeGame : Int = 0
    var totalQuestion : Int = 0
    var wrightAnswer : Int = 0
    var wrongAnswer : Int = 0
    
    init(inLevel : String) {
        gameLevel = inLevel
        totalQuestion = 10
        if gameLevel == "EASY" {
            timeGame = 30
            wrightAnswer = 10
            wrongAnswer = -5
        } else if gameLevel == "MEDIUM" {
            timeGame = 20
            wrightAnswer = 20
            wrongAnswer = -10
        } else if gameLevel == "HARD" {
            timeGame = 10
            wrightAnswer = 30
            wrongAnswer = -15
        }
    }
    
    init(inGameLevel : String, inGameScore : Int) {
        gameLevel = inGameLevel
        gameScore = inGameScore
    }
    
    init() {
        
    }
}
