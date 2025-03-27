//
//  AnswerChoiceView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct AnswerChoiceView: View {
    @Binding var question: Question
    var answers = [String]()
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State var correct = false
    var body: some View {
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
            }
        }
    }
}

#Preview {
    AnswerChoiceView(question: .constant(Question(text: "", answers: [], correct: "")))
}
