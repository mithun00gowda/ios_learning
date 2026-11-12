//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabal: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(quizQuestions.count)
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotitRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotitRight{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestion()
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
        scoreLabal.text = "Score : \(quizBrain.getScore())"
        choice1Button.setTitle(quizBrain.getChoiceLabel(choice: 0), for: .normal)
        choice2Button.setTitle(quizBrain.getChoiceLabel(choice: 1), for: .normal)
        choice3Button.setTitle(quizBrain.getChoiceLabel(choice: 2), for: .normal)
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
    }
    
}

