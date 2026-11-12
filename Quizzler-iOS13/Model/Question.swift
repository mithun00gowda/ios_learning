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
    let answer:String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
