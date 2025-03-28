//
//  AnswerChoiceView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct AnswerChoiceView: View {
    
    @Binding var question: Question // The current question
    @Binding var selectedAnswer: String? // The answer choice selected by the user
    @State var correct = false // Whether the user was correct or not
    
    var columns = [GridItem(.flexible()), GridItem(.flexible())] // Building the grid
    
    var body: some View {
        let answers = question.getAnswers()
        LazyVGrid(columns: columns) {
            ForEach(answers, id: \.self) { answer in
                Button(answer) {
                    if (question.validateAnswer(selection: answer, correct: question.correct)) {
                        withAnimation {
                            correct.toggle()
                        } completion: {
                            correct.toggle()
                        }
                    }
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color(.green))
                .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    AnswerChoiceView(question: .constant(Question(text: "hello", answers: ["A", "B", "C", "D"], correct: "A")), selectedAnswer: .constant(""))
}
