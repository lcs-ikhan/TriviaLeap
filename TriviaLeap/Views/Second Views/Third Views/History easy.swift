//
//  History easy.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct History_easy: View {
    // MARK: Stored properties
    
    // The current history question to display
    @State var questions: [Trivia] = []
    
    var body: some View {
        NavigationView{
            
            if questions.count > 0 {

                VStack(spacing: 50){
                    
                    Text(questions.first!.difficulty)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.trailing)
                    
    //                Text(currentHistory.question)
    //                    .font(.title)
    //                    .fontWeight(.semibold)
    //                    .multilineTextAlignment(.center)
                
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
//
//                        Task {
//                            // Get the next trivia question
//                            withAnimation{
//                                currentHistory = []
//                            }
//                            currentHistory = await NetworkService.fetch()
//                        }
//
                    }, label: {
                        Text("Next question")
                    })
                    .buttonStyle(.bordered)
                    
                    
                }
                .padding()
                
                .navigationTitle("History")
    //            .navigationTitle(currentHistory.category)

            } else {
                Text("Something went wrong")
            }
            
            

        }
    }
}

struct History_easy_Previews: PreviewProvider {
    static var previews: some View {
        History_easy()
    }
}
