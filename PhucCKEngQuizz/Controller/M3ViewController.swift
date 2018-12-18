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
        //Dem nguoc thoi gian Game. het thoi gian ket thuc
        if gameTime == 0 {
            gameTimer.invalidate()
            goToEndGameView()
        }
    }
    
    @IBAction func onChooseAnswer(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text!
        if userAnswer == questionBank.questionList[questionIndex].questionAnswerTrue {
            score += gl.wrightAnswer
        } else {
            score += gl.wrongAnswer
        }
        
        questionIndex += 1
        //code chuyen man hinh khi tra loi het cau hoi
        if questionIndex == gl.totalQuestion {
            goToEndGameView()
        } else {
            loadScreen()
        }
    }
    
    private func loadScreen() {
        lbCurrentQuestion.text = "Question: \(questionIndex + 1)/\(gl.totalQuestion)"
        lbScore.text = "Score: \(score)"
        imgQuestion.image = questionBank.questionList[questionIndex].questionImage
        for answerIndex in 0..<4 {
            btnAnswer[answerIndex].setTitle(questionBank.questionList[questionIndex].questionAnswerArr[answerIndex], for: .normal)
        }
    }
    
    private func goToEndGameView(){
        //Truyen du lieu diem so
        let us = UserDefaults.standard
        us.set(score, forKey: "GAME_SCORE")
        let m4ViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "endGameView") as! M4ViewController
        self.present(m4ViewController, animated: true, completion: nil)
    }

}
