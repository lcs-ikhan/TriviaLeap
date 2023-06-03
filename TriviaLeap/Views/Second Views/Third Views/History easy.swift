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
            VStack(spacing: 20){
                Text("Easy")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.trailing)
                    .border(Color.green)
                
                Text("Who won the balondor in 2016?")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            
                
                HStack(spacing: 75){
                    
                    
                    Text("true")
                        .border(Color.green)
                    
                    Text("false")
                    
                }
                
            }
            
            .navigationTitle("History")
            

        }
    }
}

struct History_easy_Previews: PreviewProvider {
    static var previews: some View {
        History_easy()
    }
}
