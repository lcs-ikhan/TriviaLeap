//
//  HistoryView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-03.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        
        List {
            NavigationLink(destination: HistoryEasy()
                .environment(\.blackbirdDatabase, AppDatabase.instance)){
                Text("Easy")
            }
            NavigationLink(destination: HistoryMedium()
                .environment(\.blackbirdDatabase, AppDatabase.instance)){
                Text("Medium")
            }
            
            NavigationLink(destination: HistoryHard()
                .environment(\.blackbirdDatabase, AppDatabase.instance)){
                Text("Hard")
            }
        }
    }
}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
