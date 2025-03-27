//
//  QuestionView.swift
//  QuizApp
//
//  Created by Apeksha Malik on 3/27/25.
//

import SwiftUI
import Foundation

struct QuestionView: View {
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var incorrectCount = 0
    @State private var showScore = false
    
    @Binding var question: Question
    
//    Question(text: "In SwiftUI, which type of stack is used for layering views on top of each other?",
//        answers: ["ZStack", "VStack", "LStack", "HStack"],
//        correct: "ZStack")
    
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
                
                Text(question.text)
                    .font(.headline)
                    .padding()
            }
            Spacer()
            AnswerChoiceView(question: question)
            Spacer()
        }
    }
}

#Preview {
    QuestionView(question: .constant(Question(text: "hello", answers: ["A", "B", "C", "D"], correct: "")))
}
