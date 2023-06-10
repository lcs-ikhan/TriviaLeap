//
//  History easy.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import Blackbird
import SwiftUI

struct HistoryEasy: View {
    // MARK: Stored properties
    
    // Access the connection to the database (needed to add a new record)
    @Environment(\.blackbirdDatabase) var db: Blackbird.Database?
    
    @State var buttonOpacity = 0.0
    
    // The current history question to display
    @State var questions: [Trivia] = []
    
    @State var answerCorrect = false
    
    @State var answered = false
    
    @State var correctEasy = 0
    
    @State var questionsAnswered = 0
    
    var body: some View {
        
        if questions.count > 0 {
            
            VStack(spacing: 50){
                
                Text(questions.last!.difficulty)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.trailing)
                
                Text(questions.last!.question)
                    .font(.title)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.25)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack(spacing: 75){
                    
                    if questions.first!.correct_answer == "True" {
                        
                        Button( action: {
                            
                            answerCorrect = true
                            answered = true
                            questionsAnswered += 1
                            
                            
                        }, label: {
                            Text("True")
                        })
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)
                        
                        Button(action: {
                            
                            answerCorrect = false
                            answered = true
                            questionsAnswered += 1
                            
                        }, label: {
                            Text("False")
                        })
                        .tint(.red)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)
                        
                    } else {
                        
                        Button( action: {
                            
                            answerCorrect = false
                            answered = true
                            questionsAnswered += 1
                            
                        }, label: {
                            Text("True")
                        })
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)

                        
                        Button(action: {
                            
                            answerCorrect = true
                            answered = true
                            correctEasy += 1
                            questionsAnswered += 1
                            
                        }, label: {
                            Text("False")
                        })
                        .tint(.red)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)
                        
                        
                    }
                    
                    
                    
                    
                }
                
                Spacer()
                
                if answerCorrect == true && answered == true {
                    HStack{
                                   Image(systemName: "checkmark.circle")
                                       .foregroundColor(.green)
                   
                                   Text("That is correct!")
                                       .font(.title)
                        
                        
                               }
                } else if answerCorrect == false && answered == true {
                    HStack{
                                   Image(systemName: "x.circle")
                                       .foregroundColor(.red)
                   
                                   Text("That is Incorrect!")
                                       .font(.title)
                               }
                }
                
                Button(action: {
                    let question = questions[0]
                    Task{
                        // Write to database
//                        if exampleSave != exampleSave{
                            try await db!.transaction { core in
                                try core.query("INSERT INTO SavedTrivia (category, type, difficulty, question, correct_answer, incorrect_answers) VALUES (?,?,?,?,?,?)",
                                               question.category,
                                               question.type,
                                               question.difficulty,
                                               question.question,
                                               question.correct_answer,
                                               question.incorrect_answers[0])
                            }
//                        }
                    }
                    buttonOpacity = 0.0
                    Task {
                        // Get the next trivia question
                        withAnimation{
                            questions = []
                        }
                        questions = await NetworkServiceHEasy.fetch()
                    }
                
                    
                    answered = false
                }, label: {
                    Text("Next question")
                })
                .opacity(answered == false ? 0.0 : 1.0)
                .buttonStyle(.bordered)

            }
            .padding()
            
        }

        
    else {
        
        Text("Waiting for Question")
        
            .task {
                        if questions.count == 0 {
                            questions = await NetworkServiceHEasy.fetch()
                        }
            
                    }
    }
    
    
}

}



struct HistoryEasy_Previews: PreviewProvider {
    static var previews: some View {
        HistoryEasy()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}


