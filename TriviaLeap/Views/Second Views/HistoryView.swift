//
//  HistoryView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: HistoryEasy()){
                    Text("Easy")
                }
                
            Text("Medium")
                
            Text("Hard")
            }
            .navigationTitle("History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
