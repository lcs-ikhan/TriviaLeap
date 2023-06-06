//
//  History easy.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct HistoryEasy: View {
    // MARK: Stored properties
    
    @State var buttonOpacity = 0.0
    
    // The current history question to display
    @State var questions: [Trivia] = []
    
    @State var answerCorrect = false
    
    @State var answered = false
    
    var body: some View {
        
        //
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
                            
                        }, label: {
                            Text("True")
                        })
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)
                        
                        Button(action: {
                            
                            answerCorrect = false
                            answered = true
                            
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
                            
                        }, label: {
                            Text("True")
                        })
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)

                        
                        Button(action: {
                            
                            answerCorrect = true
                            answered = true
                            
                        }, label: {
                            Text("False")
                        })
                        .tint(.red)
                        .buttonStyle(.borderedProminent)
                        .disabled(answered)
                        
                        
                    }
                    
                    
                    
                    
                }
                
                Spacer()
                
                //            HStack{
                //                Image(systemName: "checkmark.circle")
                //                    .foregroundColor(.green)
                //
                //                Text("That is correct!")
                //                    .font(.title)
                //            }
                
                
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
                    buttonOpacity = 0.0
                    Task {
                        // Get the next trivia question
                        withAnimation{
                            questions = []
                        }
                        questions = await NetworkService.fetch()
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
        
        //                .navigationTitle(questions!.category)
        //            .navigationTitle(currentHistory.category)
        
    else {
        
        Text("Waiting for Question")
        
            .task {
                        if questions.count == 0 {
                            questions = await NetworkService.fetch()
                        }
            
                    }
    }
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


//HStack{
//    Image(systemName: "x.circle")
//        .foregroundColor(.green)
//
//    Text("That is incorrect!")
//        .font(.title)
//
//}
