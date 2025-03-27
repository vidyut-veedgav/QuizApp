//
//  Question.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import Foundation

struct Question : Identifiable {
    let id = UUID()
    let text: String
    let answers: [String]
    let correct: String
    
    func validateAnswer(selection: String, correct: String) -> Bool {
        return (selection == correct) ? true : false
    }
    
    func getQuestion() -> String {
        return self.text
    }
    
    func getAnswers() -> [String] {
        return self.answers
    }
}


