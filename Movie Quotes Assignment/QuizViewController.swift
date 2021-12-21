//
//  QuizViewController.swift
//  Movie Quotes Assignment
//
//  Created by Linah abdulaziz on 16/05/1443 AH.
//

import UIKit

import UIKit

class QuizViewController: UIViewController {
    
   
    
    
    
    
    @IBOutlet weak var guessMovieTextField: UITextField!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var quotesLabel: UILabel!
    
    
    var moviesList: [Movie] = []
    var score = 0
    var random = -1
    var correctAnswer = ""
    var totalScore = -1
    
    var currentQuote: Movie? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalScore = moviesList.count
        setQuiz()
    }
    
    func setQuiz(){
        if moviesList.count > 0 {
            random = Int.random(in: 0..<moviesList.count)
            currentQuote = moviesList[random]
            quotesLabel.text = currentQuote?.quotes
            correctAnswer = currentQuote!.name
            moviesList.remove(at: random)
        }
        else{
            quotesLabel.text = ""
            answerButton.isHidden = true
            guessMovieTextField.isHidden = true
        }
        scoreLabel.text = "Score: \(score) out of \(totalScore)"
    }
    
    
    
    @IBAction func answerPressed(_ sender: Any) {

     if let answer = guessMovieTextField.text, answer.isEmpty == false{
                if answer == correctAnswer{
                    score += 1
                }
                setQuiz()
        guessMovieTextField.text = ""
            }
            else{
                let alert = UIAlertController(title: "Empty field", message: "", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
    }
    
    
}

