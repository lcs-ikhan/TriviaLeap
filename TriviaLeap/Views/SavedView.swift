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
        NavigationView{ List(savedQuestions.results.reversed()) { question in
            VStack(alignment: .leading) {
                ListView(question: question)
            }
        }
        .navigationTitle("Previous Questions")
        }
    }
}
    struct SavedView_Previews: PreviewProvider {
        static var previews: some View {
            SavedView()
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }

