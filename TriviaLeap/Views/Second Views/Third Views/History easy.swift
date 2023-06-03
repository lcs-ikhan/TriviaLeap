//
//  History easy.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct History_easy: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 50){
                Text("Easy")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.trailing)
                
                Text("The Spitfire originated from a racing plane.")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            
            Spacer()
                
                HStack(spacing: 75){
                    
                    Button("True") {}
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                    
                    Button("False") {}
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
              
                Button("Next question") {}
                    .buttonStyle(.bordered)
                
            }
            .padding()
            
            .navigationTitle("History")
            

        }
    }
}

struct History_easy_Previews: PreviewProvider {
    static var previews: some View {
        History_easy()
    }
}
