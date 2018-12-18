//
//  QuestionBank.swift
//  PhucCKEngQuizz
//
//  Created by Guest User on 11/19/18.
//  Copyright © 2018 Guest User. All rights reserved.
//

import Foundation
import UIKit

class QuestionBank {
    var questionList = [Question]()
    
    init() {
        questionList.append(Question(inQuestionImage: UIImage(named: "dog")!,
                                     inQuestionAnswerArr: ["Dog","Cat","Cow","Bird"],
                                     inQuestionAnswerTrue: "Dog"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "cat")!,
                                     inQuestionAnswerArr: ["Dog","Cat","Cow","Bird"],
                                     inQuestionAnswerTrue: "Cat"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "cow")!,
                                     inQuestionAnswerArr: ["Dog","Cat","Cow","Bird"],
                                     inQuestionAnswerTrue: "Cow"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "bird")!,
                                     inQuestionAnswerArr: ["Dog","Cat","Cow","Bird"],
                                     inQuestionAnswerTrue: "Bird"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "bee")!,
                                     inQuestionAnswerArr: ["Bee","Fish","Duck","Camel"],
                                     inQuestionAnswerTrue: "Bee"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "fish")!,
                                     inQuestionAnswerArr: ["Dog","Fish","Cow","Bird"],
                                     inQuestionAnswerTrue: "Fish"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "camel")!,
                                     inQuestionAnswerArr: ["Dog","Camel","Cow","Cat"],
                                     inQuestionAnswerTrue: "Camel"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "duck")!,
                                     inQuestionAnswerArr: ["Duck","Cat","Cow","Fish"],
                                     inQuestionAnswerTrue: "Duck"))
        
        questionList.append(Question(inQuestionImage: UIImage(named: "chicken")!,
                                     inQuestionAnswerArr: ["Dog","Chicken","Cow","Pig"],
                                     inQuestionAnswerTrue: "Chicken"))
         
        questionList.append(Question(inQuestionImage: UIImage(named: "frog")!,
                                     inQuestionAnswerArr: ["Dog","Cat","Cow","Frog"],
                                     inQuestionAnswerTrue: "Frog"))
        
    }
}
