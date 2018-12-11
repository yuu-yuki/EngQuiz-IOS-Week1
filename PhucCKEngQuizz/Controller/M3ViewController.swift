//
//  M3ViewController.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit

class M3ViewController: UIViewController {

    var gameTime = 0
    var level = ""
    var gl = Game()
    var gameTimer = Timer()
    let questionBank = QuestionBank()
    var questionIndex = 0
    var score = 0
    
    @IBOutlet weak var lbQuizzTime: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbCurrentQuestion: UILabel!
    @IBOutlet weak var imgQuestion: UIImageView!
    
    @IBOutlet var btnAnswer: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let us = UserDefaults.standard
        level = us.string(forKey: "GAME_LEVEL")!
        
        gl = Game(inLevel: level)
        
        gameTime = gl.timeGame
        lbQuizzTime.text = "Quizz Time: \(gl.timeGame)"
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(gameTimerTick), userInfo: nil, repeats: true)
        
        loadScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
    
    @objc func gameTimerTick() {
        gameTime -= 1
        lbQuizzTime.text = "Quizz Time: \(gameTime)"
        if gameTime == 0 {
            gameTimer.invalidate()
            gameOver()
        }
    }
    
    func gameOver(){
        
    }

    @IBAction func onChooseAnswer(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text!
        if userAnswer == questionBank.questionList[questionIndex].questionAnswerTrue {
            score += gl.wrightAnswer
        } else {
            score += gl.wrongAnswer
        }
        
        questionIndex += 1
        
        if questionIndex == gl.totalQuestion {
            let endGameView = UIStoryboard.init().instantiateViewController(withIdentifier: "endGameView")
            self.present(endGameView, animated: true, completion: nil)
        }
        
        loadScreen()
    }
    
    private func loadScreen() {
        lbCurrentQuestion.text = "Question: \(questionIndex + 1)/\(gl.totalQuestion)"
        lbScore.text = "Score: \(score)"
        imgQuestion.image = questionBank.questionList[questionIndex].questionImage
        for answerIndex in 0..<4 {
            btnAnswer[answerIndex].setTitle(questionBank.questionList[questionIndex].questionAnswerArr[answerIndex], for: .normal)
        }
    }
}
