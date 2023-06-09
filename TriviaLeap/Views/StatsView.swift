//
//  StatsView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-01.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
            NavigationView{
                ScrollView{
                    VStack{
                        
                        NavigationLink(destination: HistoryStats()){
                            Image("History")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height:100)
                            Text("History")
                                .font(.title)
                                .bold()
                        }
                        
                        Divider()
                        
                        Image("Mythology")
                            .resizable()
                            .scaledToFit()
                        Text("Mythology")
                            .font(.title)
                            .bold()
                        
                    }
                    .navigationTitle("Statistics")
                }
            }
            
     
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
