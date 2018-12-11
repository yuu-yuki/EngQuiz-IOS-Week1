//
//  Question.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import Foundation
import UIKit

class Question {
    let questionImage : UIImage
    let  questionAnswerArr : [String]
    let questionAnswerTrue : String
    
    init(inQuestionImage : UIImage , inQuestionAnswerArr : [String], inQuestionAnswerTrue : String) {
        questionImage = inQuestionImage
        questionAnswerArr = inQuestionAnswerArr
        questionAnswerTrue = inQuestionAnswerTrue
    }
    
    
}
