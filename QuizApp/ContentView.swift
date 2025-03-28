//
//  ContentView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct ContentView: View {
    
    let questions = [
        Question(text: "Which stack is used for layering views on top of each other?",
                 answers: ["ZStack", "VStack", "LStack", "HStack"],
                 correct: "ZStack"),
        Question(text: "What is @State used for in SwiftUI?",
                 answers: ["Truth Source", "Inheritance", "Persistance", "Networking"],
                 correct: "Truth"),
        Question(text: "What container do you use for SwiftData?",
                 answers: [".modelContext", ".modelContainer", ".modelCan", ".modelBag"],
                 correct: ".modelContainer"),
        Question(text: "What is my favorite color",
                 answers: ["Red", "White", "Green", "Yellow"],
                 correct: "White"),
        Question(text: "What is the largest river in the world?",
                 answers: ["Amazon", "Nile", "Ganga", "Hudson"],
                 correct: "Nile")
    ]
    
    @State private var currentQuestion: Question
    @State private var currentAnswer: String?
    var currentQuestionIndex = 0
    
    init() {
        _currentQuestion = State(initialValue: questions[currentQuestionIndex]) // Initialize the state variable
    }
    
    var body: some View {
        NavigationStack {
            QuestionView(question: $currentQuestion, selectedAnswer: $currentAnswer)
                    
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
