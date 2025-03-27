//
//  AnswerChoiceView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct AnswerChoiceView: View {
    @State var question: Question
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State var correct = false
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
    AnswerChoiceView(question: Question(text: "hello", answers: ["A", "B", "C", "D"], correct: ""))
}
