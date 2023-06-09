//
//  ListView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-09.
//

import SwiftUI
struct ListView: View {
    let question: SavedTrivia
    var body: some View {
        Text(question.category)
            .bold()
        Text(question.difficulty)
        Text(question.question)
        Text(question.correct_answer)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(question: exampleSave)
    }
}
