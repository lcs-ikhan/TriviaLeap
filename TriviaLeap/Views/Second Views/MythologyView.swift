//
//  MythologyView.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-10.
//

import SwiftUI

struct MythologyView: View {
    var body: some View {
        List {
            NavigationLink(destination: HistoryEasy()
                .environment(\.blackbirdDatabase, AppDatabase.instance)){
                Text("Easy")
            }
            NavigationLink(destination: MythologyMedium()){
                Text("Medium")
            }
            
            NavigationLink(destination: MythologyHard()){
                Text("Hard")
            }
        }
    }
}

struct MythologyView_Previews: PreviewProvider {
    static var previews: some View {
        MythologyView()
    }
}
