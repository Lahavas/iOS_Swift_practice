//
//  ViewController.swift
//  Quiz
//
//  Created by Jaeho on 2017. 9. 16..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.questionLabel.alpha = 0
    }
    
    // MARK: - Memory Management

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Actions
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        
        answerLabel.text = "???"
        
        self.animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    // MARK: - Methods
    
    func animateLabelTransitions() {
        UIView.animate(withDuration: 0.5) { 
            self.questionLabel.alpha = 1
        }
    }
}

