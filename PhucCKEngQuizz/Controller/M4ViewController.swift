//
//  M4ViewController.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit
import Foundation

class M4ViewController: UIViewController {
    
    @IBOutlet weak var lbGameLv: UILabel!
    @IBOutlet weak var lbGameScore: UILabel!
    
    @IBOutlet weak var lbEasyHighScore: UILabel!
    @IBOutlet weak var lbMediumHighScore: UILabel!
    @IBOutlet weak var lbHardHighScore: UILabel!
    
    var lv = ""
    var score = 0
    var highScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let us = UserDefaults.standard
        //Truyen du lieu sang man hinh cuoi
        lv = us.string(forKey: "GAME_LEVEL")!
        score = us.integer(forKey: "GAME_SCORE")
        
        lbGameLv.text = "Level : \(lv)"
        lbGameScore.text = "Score : \(score)"
        highScore = us.integer(forKey: "\(lv)_HIGH_SCORE")
        if(score > highScore) {
            highScore = score
            us.set(score, forKey: "\(lv)_HIGH_SCORE")
        }
        lbEasyHighScore.text = "Easy : \(us.integer(forKey: "EASY_HIGH_SCORE"))"
        lbMediumHighScore.text = "Medium : \(us.integer(forKey: "MEDIUM_HIGH_SCORE"))"
        lbHardHighScore.text = "Hard : \(us.integer(forKey: "HARD_HIGH_SCORE"))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RestartGame(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
