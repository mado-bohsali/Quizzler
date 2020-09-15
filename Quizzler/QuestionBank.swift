//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Mohamad El Bohsaly on 7/16/19.
//

import Foundation

class QuestionBank{
    
    var list_of_questions = [Question]()
    
    init(){
        // skipping one step and just creating the quiz item inside the append function
        list_of_questions.append(Question(text: "A slug\'s blood is green.", correct_answer: true))
        
        list_of_questions.append(Question(text: "Approximately one quarter of human bones are in the feet.", correct_answer: true))
        
        list_of_questions.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correct_answer: true))
        
        list_of_questions.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correct_answer: true))
        
        list_of_questions.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correct_answer: false))
        
        list_of_questions.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correct_answer: true))
        
        list_of_questions.append(Question(text: "You can lead a cow down stairs but not up stairs.", correct_answer: false))
        
        list_of_questions.append(Question(text: "Google was originally called \"Backrub\".", correct_answer: true))
        
        list_of_questions.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correct_answer: true))
        
        list_of_questions.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correct_answer: false))
        
        list_of_questions.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correct_answer: false))
        
        list_of_questions.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correct_answer: true))

    }
}
