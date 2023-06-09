//
//  SavedTrivia.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-09.
//

import Foundation
import Blackbird

struct SavedTrivia: Codable, BlackbirdModel {
    @BlackbirdColumn var category: String
    @BlackbirdColumn var type: String
    @BlackbirdColumn var difficulty: String
    @BlackbirdColumn var question: String
    @BlackbirdColumn var correct_answer: String
    @BlackbirdColumn var incorrect_answers: String
}

let exampleSave = SavedTrivia(category: "History", type: "boolean", difficulty: "easy", question: "The Spitfire originated from a racing plane.", correct_answer: "True", incorrect_answers: "False")
