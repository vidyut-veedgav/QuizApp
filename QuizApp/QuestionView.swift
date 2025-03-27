//
//  QuestionView.swift
//  QuizApp
//
//  Created by Apeksha Malik on 3/27/25.
//

import SwiftUI
import Foundation

struct Question: Identifiable {
    let id = UUID()
    let text: String
    let answers: [String]
    let correct: String
}

struct QuestionView: View {
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var incorrectCount = 0
    @State private var showScore = false
    
    @State private var questions = [Question(text: "In SwiftUI, which type of stack is used for layering views on top of each other?",
        answers: ["ZStack", "VStack", "LStack", "HStack"],
        correct: "ZStack")]
    
    var body: some View {
        VStack {
            if showScore {
                Text("Score")
                    .font(.largeTitle)
                Text("Incorrect Answers: \(incorrectCount)")
                    .font(.title)
            }
            else {
                Text("Quizzo")
                    .font(.largeTitle)
                    .bold()
                
                Text(questions[currentQuestionIndex].text)
                                   .font(.headline)
                                   .padding()
            }
        }
    }
}

#Preview {
    QuestionView()
}
