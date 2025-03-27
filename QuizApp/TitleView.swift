//
//  TitleView.swift
//  QuizApp
//
//  Created by Vidyut Veedgav on 3/27/25.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 100)
                Text("Welcome to Quizzo!")
                    .font(.largeTitle)
                    .padding()
                Text("Are you ready to test your knowledge?")
                Spacer()
                Button("Begin") {
                    print("entering quiz")
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color(.blue))
                .clipShape(Capsule())
                Spacer()
                
            }
        }
    }
}

#Preview {
    TitleView()
}
