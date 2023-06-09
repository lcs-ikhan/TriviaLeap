//
//  SavedTrivia.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-09.
//

import Foundation

struct SavedTrivia: Codable {
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correct_answer: String
    let incorrect_answers: String
}
