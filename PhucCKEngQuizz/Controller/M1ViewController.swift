//
//  M1ViewController.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit
import Foundation

class M1ViewController: UIViewController {
    var gameLevel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func chooseLevel(_ sender: UIButton) {
        gameLevel = (sender.titleLabel?.text)!
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(gameLevel, forKey: "GAME_LEVEL")
    }
    
    
    

   

}
