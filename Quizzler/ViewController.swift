//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//

import UIKit
//import ProgressHUD
import CoreData

class ViewController: UIViewController {
    
    let all_questions = QuestionBank()
    var picked_answer : Bool = false
    var question_number : Int = 0
    var score : Int = 0
    
    //Place your instance variables here
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBarView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion() //start at 0
        updateUI()
        
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            picked_answer = true
        } else if sender.tag == 2 {
            picked_answer = false
        }
        
        checkAnswer()
        question_number+=1
        updateUI()
        nextQuestion()
    }
    
    
    func updateUI() {
        //update the progressBar and scoreLabel
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(question_number+1)/13"
        progressBarView.progress = Float(question_number+1) / 13.0
    }
    

    func nextQuestion() {
        if question_number < all_questions.list_of_questions.count {
            questionLabel.text = all_questions.list_of_questions[question_number].question_text
            
        } else{
            //End of quiz - reset progress - UIAlertController
            let alert = UIAlertController(title: "Quiz is over!", message: "Are you willing to start over?", preferredStyle: .actionSheet) //Constants indicating the type of alert to display. actionSheet slides from the bottom
            
            let restart_action = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in self.startOver()})
            
            alert.addAction(restart_action) //Attaches an action object to the alert or action sheet
            present(alert, animated: true, completion: nil) //Presents a view controller modally.
        }
    }
    
    func checkAnswer() {
        let correct_answer = all_questions.list_of_questions[question_number].answer
        
        if correct_answer == picked_answer {
            ProgressHUD.showSuccess("You got it!")
            score = score + 1
            
        } else{
            ProgressHUD.showError("False! But proceed.")
          
        }
    }
    
    
    func startOver() {
       question_number = 0
       score = 0
       scoreLabel.text = "Score: \(score)"
       progressLabel.text = "\(score)/13"
       progressBarView.progress = 1.0/13.0

       all_questions.list_of_questions.shuffle()
       nextQuestion()
        
    }
    

    
}
