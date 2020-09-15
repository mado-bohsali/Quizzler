//
//  Question.swift
//  Quizzler
//
//  Created by Mohamad El Bohsaly on 7/16/19.
//

import Foundation

//Model/Data
class Question{
    //constant properties with initializers
    let question_text : String
    let answer : Bool
    
    init(text : String, correct_answer : Bool){
        question_text = text
        answer = correct_answer
    }
}
