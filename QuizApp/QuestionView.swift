//
//  QuestionView.swift
//  QuizApp
//
//  Created by Apeksha Malik on 3/27/25.
//

import SwiftUI
import Foundation

struct QuestionView: View {
    
    @Binding var question: Question
    @Binding var selectedAnswer: String?
    
//    Question(text: "In SwiftUI, which type of stack is used for layering views on top of each other?",
//        answers: ["ZStack", "VStack", "LStack", "HStack"],
//        correct: "ZStack")
    
    var body: some View {
        VStack {
            Text("Quizzo")
                .font(.largeTitle)
                .bold()
                
            Text(question.text)
                .font(.headline)
                .padding()
        }
        Spacer()
        AnswerChoiceView(question: $question, selectedAnswer: $selectedAnswer)
        Spacer()
    }
}

#Preview {
    QuestionView(question: .constant(Question(text: "Sample?", answers: ["A", "B", "C", "D"], correct: "A")), selectedAnswer: .constant(""))
}

