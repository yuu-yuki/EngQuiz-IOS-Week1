//
//  M4ViewController.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit

class M4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
