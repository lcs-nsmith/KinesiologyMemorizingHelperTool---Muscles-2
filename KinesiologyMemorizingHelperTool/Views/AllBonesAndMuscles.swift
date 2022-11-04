//
//  AllBonesAndMuscles.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct AllBonesAndMuscles: View {
    
    @Binding var listOfPictures: [Bone]
    
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            List(listOfPictures) { currentItem in
                LazyVGrid(columns: columns, spacing: 20) {
                    Image(currentItem.imageName)
                        .resizable()
                        .scaledToFill()
                    Text("\(currentItem.imageName)")
                        .font(.title)
                        .fontWeight(.medium)
                }
            }
            
        }
    }
}
//
//struct AllBonesAndMuscles_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView {
//            AllBonesAndMuscles()
//                .tabItem {
//                    Label("All Bones And Muscles", systemImage: "books.vertical")
//                }
//            MainPageView()
//                .tabItem {
//                    Label("Questions", systemImage: "list.dash")
//                }
//            HistoryTabView()
//                .tabItem {
//                    Label("History", systemImage: "list.dash")
//                }
//        }
//    }
//}
