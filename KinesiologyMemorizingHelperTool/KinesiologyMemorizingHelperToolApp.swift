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
   @State var listOfPictures: [Bone] = [
        
        Bone(imageName: "Atlas")
        
        ,
        
        Bone(imageName: "Axis")
        
        ,
        
        Bone(imageName: "Calcaneus")
        
        ,
        
        Bone(imageName: "Cervical Spine")
        
        ,
        
        Bone(imageName: "Clavicle")
        
        ,
        
        Bone(imageName: "Coccyx")
        
        ,
        
        Bone(imageName: "Costal Cartilage")
        
        ,
        
        Bone(imageName: "femur")
        
        ,
        
        Bone(imageName: "Fibula")
        
        ,
        
        Bone(imageName: "Frontal Bone")
        
        ,
        
        Bone(imageName: "Humerus")
        
        ,
        
        Bone(imageName: "Hip Bone - Ilium, Pubis, Ischium")
        
        ,
        
        Bone(imageName: "Ilium")
        
        ,
        
        Bone(imageName: "Ischium")
        
        ,
        
        Bone(imageName: "LumbarSpine")
        
        ,
        
        Bone(imageName: "Mandible")
        
        ,
        
        Bone(imageName: "Maxilla")
        
        ,
        
        Bone(imageName: "Metacarpals")
        
        ,
        
        Bone(imageName: "Metatarsals")
        
        ,
        
        Bone(imageName: "Occipital Bone")
        
        ,
        
        Bone(imageName: "patella")
        
        ,
        
        Bone(imageName: "Phalanges")
        
        ,
        
        Bone(imageName: "Pubis")

        ,
        
        Bone(imageName: "Radius")

        ,
        
        Bone(imageName: "Manubrium")

        ,
        
        Bone(imageName: "Sacrum")

        ,
        
        Bone(imageName: "Carpals")

        ,
        
        Bone(imageName: "Parietal Bone")

        ,
        
        Bone(imageName: "Scapula")

        ,
        
        Bone(imageName: "Sternum")

        ,
        
        Bone(imageName: "Symphysis Pubis")

        ,
        
        Bone(imageName: "Talus")

        ,
        
        Bone(imageName: "Tarsals")

        ,
        
        Bone(imageName: "Temporal Bone")
        
        ,
        
        Bone(imageName: "Thoracic Spine")
        
        ,
        
        Bone(imageName: "tibia")
        
        ,
        
        Bone(imageName: "Ulna")
        
        ,
        
        Bone(imageName: "Xiphoid Process")
        
        ,
        
        Bone(imageName: "Zygomatic Bone")
        
        ,
        
        Bone(imageName: "Ribs")
        
    ]
    
    
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainPageView(listOfPictures: $listOfPictures)
                    .tabItem {
                        Label("Questions", systemImage: "list.dash")
                    }
                HistoryTabView()
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
