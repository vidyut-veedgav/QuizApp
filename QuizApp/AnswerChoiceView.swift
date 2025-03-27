//
//  AnswerChoiceView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct AnswerChoiceView: View {
    @Binding var questions: Question
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach()
        }
    }
}

#Preview {
    AnswerChoiceView()
}
