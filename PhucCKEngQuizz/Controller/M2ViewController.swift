//
//  M2ViewController.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit

class M2ViewController: UIViewController {

    @IBOutlet weak var lbLevel: UILabel!
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var lbRightAnswer: UILabel!
    @IBOutlet weak var lbWrongAnswer: UILabel!
    @IBOutlet weak var lbTotalTime: UILabel!
    
    var  gameLevel = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        gameLevel = (userDefaults.string(forKey: "GAME_LEVEL"))!
        let gl = Game(inLevel: gameLevel)
        
        lbLevel.text = "Level: \(gl.gameLevel)"
        lbTotalTime.text = "Total time: \(gl.timeGame)"
        lbRightAnswer.text = "Right answer: +\(gl.wrightAnswer)"
        lbWrongAnswer.text = "Wrong answer: \(gl.wrongAnswer)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func StartGame(_ sender: UIButton) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(gameLevel, forKey: "GAME_LEVEL")
    }
    
}
