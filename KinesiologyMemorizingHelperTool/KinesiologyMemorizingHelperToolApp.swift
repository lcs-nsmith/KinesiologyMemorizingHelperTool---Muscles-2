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
        
        Muscle(imageName: "Adductor Brevis")
        
        ,
        
        Muscle(imageName: "Adductor Longus")
        
        ,
        
        Muscle(imageName: "Adductor Magnus")
        
        ,
        
        Muscle(imageName: "Gastrocnemius")
        
        ,
        
        Muscle(imageName: "Gluteus Maximus")
        
        ,
        
        Muscle(imageName: "Gluteus Medius")
        
        ,
        
        Muscle(imageName: "Gluteus Minimus")
        
        ,
        
        Muscle(imageName: "Gracilis")
        
        ,
        
        Muscle(imageName: "Iliopsoas (Psoas Major & Iliacus)")
        
        ,
        
        Muscle(imageName: "Pectineus")
        
        ,
        
        Muscle(imageName: "Psoas minor")
        
        ,
        
        Muscle(imageName: "Ririformis")
        
        ,
        
        Muscle(imageName: "Sartorius")
        
        ,
        
        Muscle(imageName: "Soleus")
        
        ,
        
        Muscle(imageName: "Tensor Fascia Latae")
        
        ,
        
        Muscle(imageName: "Tibialis Anterior")
        
        ,
        
        Muscle(imageName: "Vastus Intermedius")
        
        ,
        
        Muscle(imageName: "Rectus Femoris")
        
        ,
        
        Muscle(imageName: "Vastus Lateralis")
        
        ,
        
        Muscle(imageName: "Vastus Medialis")
        
        ,
        
        Muscle(imageName: "Semimembranosus")
        
        ,
        
        Muscle(imageName: "Semitendinosus")
        
        ,   
        
        Muscle(imageName: "Biceps Femoris") 
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
