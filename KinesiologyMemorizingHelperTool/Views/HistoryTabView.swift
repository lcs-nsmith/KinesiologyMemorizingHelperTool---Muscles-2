//
//  HistoryTabView.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct HistoryTabView: View {
    // MARK: Stored Properties
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    @Binding var boneToSavedList: [BoneToSavedList]
    
    // MARK: Computed Properties
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                List(boneToSavedList) { currentItem in
                    LazyVGrid(columns: columns, spacing: 20) {
                        HStack {
                            Image(currentItem.imageOne)
                                .resizable()
                                .scaledToFill()
                            Image(currentItem.imageTwo)
                                .resizable()
                                .scaledToFill()
                            Image(currentItem.imageThree)
                                .resizable()
                                .scaledToFill()
                        }
                        Text("\(currentItem.whichAnswerIsCorrect) was the correct answer")
                            .font(.title)
                            .fontWeight(.medium)
                        
                        ZStack {
                            Image(systemName: "x.square")
                                .opacity(currentItem.isAnswerCorrect ? 0.0 : 0.0)
                            
                            Image(systemName: "checkmark.circle")
                                .opacity(currentItem.isAnswerCorrect ? 1.0 : 0.0)
                        }
                    }
                }
            }
        }
    }
}
//
//struct HistoryTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView {
//            HistoryTabView()
//                .tabItem {
//                    Label("History", systemImage: "list.dash")
//                }
//            AllBonesAndMuscles()
//                .tabItem {
//                    Label("All Bones And Muscles", systemImage: "books.vertical")
//                }
//            MainPageView()
//                .tabItem {
//                    Label("Questions", systemImage: "list.dash")
//                }
//        }
//    }
//}
