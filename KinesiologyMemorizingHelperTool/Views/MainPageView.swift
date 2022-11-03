//
//  MainPageView.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct MainPageView: View {
    // MARK: Stored Properties
    
    // MARK: Computed Properties
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                Text("Nathan's Kinesiology Memorizing Helper Tool")
                    .font(.system(size: 35, weight: .medium, design: .serif))
                HStack {
                    Image("femur")
                        .resizable()
                        .scaledToFit()
                    Image("patella")
                        .resizable()
                        .scaledToFit()
                    Image("tibia")
                        .resizable()
                        .scaledToFit()
                }
                ZStack {
                    Text("Correct!")
                        .font(.system(size: 35, weight: .medium, design: .serif))
                        .foregroundColor(.green)
                    Text("Wrong")
                        .font(.system(size: 35, weight: .medium, design: .serif))
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            MainPageView()
                .tabItem {
                    Label("Questions", systemImage: "list.dash")
                }
            HistoryTabView()
                .tabItem {
                    Label("History", systemImage: "list.dash")
                }
            AllBonesAndMuscles()
                .tabItem {
                    Label("All Bones And Muscles", systemImage: "books.vertical")
                }
        }
    }
}
