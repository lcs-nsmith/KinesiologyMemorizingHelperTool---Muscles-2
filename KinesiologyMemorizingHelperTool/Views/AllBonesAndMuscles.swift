//
//  AllBonesAndMuscles.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct AllBonesAndMuscles: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
        }
    }
}

struct AllBonesAndMuscles_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            AllBonesAndMuscles()
                .tabItem {
                    Label("All Bones And Muscles", systemImage: "books.vertical")
                }
            MainPageView()
                .tabItem {
                    Label("Questions", systemImage: "list.dash")
                }
            HistoryTabView()
                .tabItem {
                    Label("History", systemImage: "list.dash")
                }
        }
    }
}
