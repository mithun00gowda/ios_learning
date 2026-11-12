//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by user on 12/11/26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation


struct Question{
    let text:String
    let choice:[String]
    let correctAnswer:String
    
    init(q: String, a: [String], correctAnswer:String) {
        self.text = q
        self.choice = a
        self.correctAnswer = correctAnswer
    }
}
