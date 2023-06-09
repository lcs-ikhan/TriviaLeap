//
//  PreviousQuestions.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-08.
//

import SwiftUI

struct HistoryStats: View {
    let questionsAnswered: Int
    let correctEasy: Int
    
    var body: some View {
        Text("\(correctEasy)/\(questionsAnswered)")
    }
}

//struct GistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryStats()
//    }
//}
