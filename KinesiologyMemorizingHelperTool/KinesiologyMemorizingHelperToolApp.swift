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
   @State var listOfPictures: [BoneOrMuscle] = [
        
        BoneOrMuscle(imageName: "Adductor Brevis")
        
        ,
        
        BoneOrMuscle(imageName: "Adductor Longus")
        
        ,
        
        BoneOrMuscle(imageName: "Adductor Magnus")
        
        ,
        
        BoneOrMuscle(imageName: "Gastrocnemius")
        
        ,
        
        BoneOrMuscle(imageName: "Gluteus Maximus")
        
        ,
        
        BoneOrMuscle(imageName: "Gluteus Medius")
        
        ,
        
        BoneOrMuscle(imageName: "Gluteus Minimus")
        
        ,
        
        BoneOrMuscle(imageName: "Gracilis")
        
        ,
        
        BoneOrMuscle(imageName: "Iliopsoas (Psoas Major & Iliacus)")
        
        ,
        
        BoneOrMuscle(imageName: "Pectineus")
        
        ,
        
        BoneOrMuscle(imageName: "Psoas minor")
        
        ,
        
        BoneOrMuscle(imageName: "Ririformis")
        
        ,
        
        BoneOrMuscle(imageName: "Sartorius")
        
        ,
        
        BoneOrMuscle(imageName: "Soleus")
        
        ,
        
        BoneOrMuscle(imageName: "Tensor Fascia Latae")
        
        ,
        
        BoneOrMuscle(imageName: "Tibialis Anterior")
        
        ,
        
        BoneOrMuscle(imageName: "Vastus Intermedius")
        
        ,
        
        BoneOrMuscle(imageName: "Rectus Femoris")
        
        ,
        
        BoneOrMuscle(imageName: "Vastus Lateralis")
        
        ,
        
        BoneOrMuscle(imageName: "Vastus Medialis")
        
        ,
        
        BoneOrMuscle(imageName: "Semimembranosus")
        
        ,
        
        BoneOrMuscle(imageName: "Semitendinosus")
        
        ,
        
        BoneOrMuscle(imageName: "Biceps Femoris")
        
        ,
             
        BoneOrMuscle(imageName: "Atlas")
             
             ,
             
        BoneOrMuscle(imageName: "Axis")
             
             ,
             
        BoneOrMuscle(imageName: "Calcaneus")
             
             ,
             
        BoneOrMuscle(imageName: "Cervical Spine")
             
             ,
             
        BoneOrMuscle(imageName: "Clavicle")
             
             ,
             
        BoneOrMuscle(imageName: "Coccyx")
             
             ,
             
        BoneOrMuscle(imageName: "Costal Cartilage")
             
             ,
             
        BoneOrMuscle(imageName: "femur")
             
             ,
             
        BoneOrMuscle(imageName: "Fibula")
             
             ,
             
        BoneOrMuscle(imageName: "Frontal Bone")
             
             ,
             
        BoneOrMuscle(imageName: "Humerus")
             
             ,
             
        BoneOrMuscle(imageName: "Hip Bone - Ilium, Pubis, Ischium")
             
             ,
             
        BoneOrMuscle(imageName: "Ilium")
             
             ,
             
        BoneOrMuscle(imageName: "Ischium")
             
             ,
             
        BoneOrMuscle(imageName: "Lumbar Spine")
             
             ,
             
        BoneOrMuscle(imageName: "Mandible")
             
             ,
             
        BoneOrMuscle(imageName: "Maxilla")
             
             ,
             
        BoneOrMuscle(imageName: "Metacarpals")
             
             ,
             
        BoneOrMuscle(imageName: "Metatarsals")
             
             ,
             
        BoneOrMuscle(imageName: "Occipital Bone")
             
             ,
             
        BoneOrMuscle(imageName: "patella")
             
             ,
             
        BoneOrMuscle(imageName: "Phalanges")
             
             ,
             
        BoneOrMuscle(imageName: "Pubis")

             ,
             
        BoneOrMuscle(imageName: "Radius")

             ,
             
        BoneOrMuscle(imageName: "Manubrium")

             ,
             
        BoneOrMuscle(imageName: "Sacrum")

             ,
             
        BoneOrMuscle(imageName: "Carpals")

             ,
             
        BoneOrMuscle(imageName: "Parietal Bone")

             ,
             
        BoneOrMuscle(imageName: "Scapula")

             ,
             
        BoneOrMuscle(imageName: "Sternum")

             ,
             
        BoneOrMuscle(imageName: "Symphysis Pubis")

             ,
             
        BoneOrMuscle(imageName: "Talus")

             ,
             
        BoneOrMuscle(imageName: "Tarsals")

             ,
             
        BoneOrMuscle(imageName: "Temporal Bone")
             
             ,
             
        BoneOrMuscle(imageName: "Thoracic Spine")
             
             ,
             
        BoneOrMuscle(imageName: "tibia")
             
             ,
             
        BoneOrMuscle(imageName: "Ulna")
             
             ,
             
        BoneOrMuscle(imageName: "Xiphoid Process")
             
             ,
             
        BoneOrMuscle(imageName: "Zygomatic Bone")
             
             ,
             
        BoneOrMuscle(imageName: "Ribs")
             
    ]
    
    @State var boneOrMuscleToSavedList: [BoneOrMuscleToSavedList] = []
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainPageView(listOfPictures: $listOfPictures, muscleOrBoneToSavedList: $boneOrMuscleToSavedList)
                    .tabItem {
                        Label("Questions", systemImage: "list.dash")
                    }
                HistoryTabView(muscleToSavedList: $boneOrMuscleToSavedList)
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
