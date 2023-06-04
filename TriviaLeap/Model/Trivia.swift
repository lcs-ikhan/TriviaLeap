//
//  Trivia.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import Foundation

struct TriviaResponse: Codable {
    let results: Trivia
}

struct Trivia: Codable {
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correct_answer: Bool
    let incorrect_answers: Bool
}

let exampleHistory = Trivia(category: "History", type: "boolean", difficulty: "Easy", question: "The Spitfire originated from a racing plane.", correct_answer: true, incorrect_answers: false)
