//
//  History easy.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct HistoryEasy: View {
    // MARK: Stored properties
    
    
    
    // The current history question to display
    @State var questions: [Trivia] = [
        Trivia(category: "", type: "", difficulty: "", question: "", correct_answer: "", incorrect_answers: [""])
    ]
    
    var body: some View {
        
        //
        //            if questions.count > 0 {
        
        VStack(spacing: 50){
            
            Text(questions.first!.difficulty)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.trailing)
            
            Text(questions.first!.question)
                .font(.title)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.25)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            HStack(spacing: 75){
                
                Button( action: {
                    
                    
                    
                }, label: {
                    Text("True")
                })
                .tint(.green)
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    
                }, label: {
                    Text("False")
                })
                .tint(.red)
                .buttonStyle(.borderedProminent)
                
            }
            
            Spacer()
            
            HStack{
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                
                Text("That is correct!")
                    .font(.title)
            }
            
            Button(action: {
                
                Task {
                    // Get the next trivia question
                    withAnimation{
                        questions = [exampleHistory]
                    }
                    questions = await NetworkService.fetch()
                }
                //
            }, label: {
                Text("Next question")
            })
            .buttonStyle(.bordered)
            
            
        }
        .padding()
        
        //                .navigationTitle(questions!.category)
        //            .navigationTitle(currentHistory.category)
        
        //            } else {
        //                Text("Something went wrong")
        //            }
        //
        
    }
//        .task {
//            if questions.count == 0 {
//                questions = await NetworkService.fetch()
//            }
//
//        }
}



struct HistoryEasy_Previews: PreviewProvider {
    static var previews: some View {
        HistoryEasy()
    }
}
