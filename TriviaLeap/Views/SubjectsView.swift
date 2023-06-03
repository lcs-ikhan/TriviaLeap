//
//  Subjects.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-01.
//

import SwiftUI

struct SubjectsView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    NavigationLink(destination: HistoryView()){
                        Image("History")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Text("History")
                        .font(.title)
                        .bold()
                    
                    
                    Divider()
                    
                    Image("Mythology")
                        .resizable()
                        .scaledToFit()
                    Text("Mythology")
                        .font(.title)
                        .bold()
                    
                }
                .navigationTitle("Subjects")
            }
            
        }
       
    }
}

struct Subjects_Previews: PreviewProvider {
    static var previews: some View {
        SubjectsView()
    }
}
