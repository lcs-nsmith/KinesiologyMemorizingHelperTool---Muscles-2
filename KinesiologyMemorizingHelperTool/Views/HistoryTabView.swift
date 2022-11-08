//
//  HistoryTabView.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct HistoryTabView: View {
    // MARK: Stored Properties
    
    @Binding var boneToSavedList: [BoneToSavedList]
    
    // MARK: Computed Properties
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                List(boneToSavedList) { currentItem in
                    HStack {
                        Image(currentItem.imageOne)
                            .resizable()
                            .scaledToFit()
                        Image(currentItem.imageTwo)
                            .resizable()
                            .scaledToFit()
                        Image(currentItem.imageThree)
                            .resizable()
                            .scaledToFit()
                        Text("\(currentItem.whichAnswerIsCorrect) was the correct answer")
                            .font(.title)
                            .fontWeight(.medium)
                        
                        ZStack {
                            Text("You got it right!")
                                .foregroundColor(.green)
                                .opacity(currentItem.isAnswerCorrect ? 1.0 : 0.0)
                                .font(.title)
                            
                            Text("You got it wrong :(")
                                .foregroundColor(.red)
                                .opacity(currentItem.isAnswerCorrect ? 0.0 : 1.0)
                                .font(.title)
                        }
                        ZStack {
                            Image(systemName: "x.square")
                                .foregroundColor(.red)
                                .opacity(currentItem.isAnswerCorrect ? 0.0 : 1.0)
                                .font(.system(size: 60))

                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                                .opacity(currentItem.isAnswerCorrect ? 1.0 : 0.0)
                                .font(.system(size: 60))
                                
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
