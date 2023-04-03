//
//  KinesiologyMemorizingHelperToolApp.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-02.
//

import SwiftUI

@main
struct KinesiologyMemorizingHelperToolApp: App {
    
    // MARK: Stored Properties
    @State var listOfPictures: [Muscle] = [
         
         Muscle(imageName: "Brachialis")
         
         ,
         
         Muscle(imageName: "Brachioradialis")
         
         ,
         
         Muscle(imageName: "Coracobrachialis")
         
         ,
         
         Muscle(imageName: "Erector Spinae Group (Spinalis, Longissimus, Iliocostalis)")
         
         ,
         
         Muscle(imageName: "External Oblique")
         
         ,
         
         Muscle(imageName: "Iliocostalis")
         
         ,
         
         Muscle(imageName: "Infraspinatus")
         
         ,
         
         Muscle(imageName: "Intercostal Muscles")
         
         ,
         
         Muscle(imageName: "Latissimus Dorsi")
         
         ,
         
         Muscle(imageName: "Longissimus")
         
         ,
         
         Muscle(imageName: "Pectoralis Minor")
         
         ,
         
         Muscle(imageName: "Rectus Abdominis")
         
         ,
         
         Muscle(imageName: "Rhomboid Major and Minor")
         
         ,
         
         Muscle(imageName: "Serratus Anterior")
         
         ,
         
         Muscle(imageName: "Spinalis")
         
         ,
         
         Muscle(imageName: "Sternocleidomastoid")
         
         ,
         
         Muscle(imageName: "Subscapularis")
         
         ,
         
         Muscle(imageName: "Supraspinatus")
         
         ,
         
         Muscle(imageName: "Teres Major")
         
         ,
         
         Muscle(imageName: "Teres Minor")
         
         ,
         
         Muscle(imageName: "Transverse Abdominis")
         
         ,
         
         Muscle(imageName: "Trapezius")
         
         ,
         
         Muscle(imageName: "Wrist and Finger Flexors")
     ]
    
    @State var boneToSavedList: [BoneToSavedList] = []
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainPageView(listOfPictures: $listOfPictures, muscleToSavedList: $boneToSavedList)
                    .tabItem {
                        Label("Questions", systemImage: "list.dash")
                    }
                HistoryTabView(muscleToSavedList: $boneToSavedList)
                    .tabItem {
                        Label("History", systemImage: "list.dash")
                    }
                AllBonesAndMuscles(listOfPictures: $listOfPictures)
                    .tabItem {
                        Label("All Bones And Muscles", systemImage: "books.vertical")
                    }
            }
        }
    }
}
