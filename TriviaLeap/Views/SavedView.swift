//
//  SavedView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-09.
//

import Blackbird
import SwiftUI

struct SavedView: View {
    
    // MARK: Stored properties
    
    // The list of savedTrivia
    @BlackbirdLiveModels({ db in
        try await SavedTrivia.read(from: db)
    }) var savedQuestions
    
    
    var body: some View {
        NavigationView{            List(savedQuestions.results) { question in
                VStack(alignment: .leading) {
                    Text(question.category)
                        .bold()
                    Text(question.difficulty)
                    Text(question.question)
                    Text(question.correct_answer)
                }
            }
        }
        .navigationTitle("Previous Questions")
    }
}
struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
