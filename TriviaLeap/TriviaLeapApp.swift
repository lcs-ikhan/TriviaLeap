//
//  TriviaLeapApp.swift
//  TriviaLeap
//
//  Created by Isaad Khan on 2023-06-01.
//

import SwiftUI

@main

struct TriviaLeapApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                SubjectsView()
                    .tabItem{
                        Label("Subjects", systemImage: "books.vertical.fill")
                    }
                
                StatsView()
                    .tabItem {
                        Label("Wisdom", systemImage: "chart.bar.fill")
                    }
                
                PreviousQuestions()
                    .tabItem {
                        Label("Previous Questions", systemImage: "chart.bar.fill")
                    }
            }
            
        }
    }
}
