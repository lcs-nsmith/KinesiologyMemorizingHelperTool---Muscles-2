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
       
    BoneOrMuscle(imageName: "2 Floating Ribs")

    ,

    BoneOrMuscle(imageName: "3 False Ribs")

    ,

    BoneOrMuscle(imageName: "7 True Ribs")

    ,

    BoneOrMuscle(imageName: "Atlas")

    ,

    BoneOrMuscle(imageName: "Axis")

    ,

    BoneOrMuscle(imageName: "Calcaneus")

    ,

    BoneOrMuscle(imageName: "Carpals")

    ,

    BoneOrMuscle(imageName: "Cervical Spine")

    ,

    BoneOrMuscle(imageName: "Clavicle")

    ,

    BoneOrMuscle(imageName: "Coastal Cartilage")

    ,

    BoneOrMuscle(imageName: "Coccyx")

    ,

    BoneOrMuscle(imageName: "Femur")

    ,

    BoneOrMuscle(imageName: "Fibula")

    ,

    BoneOrMuscle(imageName: "FrontalBone")

    ,

    BoneOrMuscle(imageName: "Hip Bone - Ilium, Pubis, Ischium")

    ,

    BoneOrMuscle(imageName: "Humerus")

    ,

    BoneOrMuscle(imageName: "Ilium")

    ,

    BoneOrMuscle(imageName: "Ischium")

    ,

    BoneOrMuscle(imageName: "Lumbar Spine")

    ,

    BoneOrMuscle(imageName: "Mandible")

    ,

    BoneOrMuscle(imageName: "Manubrium")

    ,

    BoneOrMuscle(imageName: "Maxilla")

   ,

    BoneOrMuscle(imageName: "Metacarpals")
    
   ,

    BoneOrMuscle(imageName: "Metatarsals")

   ,

    BoneOrMuscle(imageName: "Occipital Bone")

    ,

    BoneOrMuscle(imageName: "Parietal Bone")

    ,

    BoneOrMuscle(imageName: "Patella")

    ,

    BoneOrMuscle(imageName: "Phalanges")

    ,

    BoneOrMuscle(imageName: "Pubis")

    ,

    BoneOrMuscle(imageName: "Radius")

    ,

    BoneOrMuscle(imageName: "Ribs")

    ,

    BoneOrMuscle(imageName: "Sacrum")

    ,

    BoneOrMuscle(imageName: "Scapula")

    ,

    BoneOrMuscle(imageName: "Sternum")

    ,

    BoneOrMuscle(imageName: "Symphysis Pubis (not)")

    ,

    BoneOrMuscle(imageName: "Talus")

    ,

    BoneOrMuscle(imageName: "Tarsals")

    ,

    BoneOrMuscle(imageName: "Temporal Bone")
    
    ,

    BoneOrMuscle(imageName: "Thoracic Spine")

    ,

    BoneOrMuscle(imageName: "Tibia")

    ,

    BoneOrMuscle(imageName: "Ulna")

    ,

    BoneOrMuscle(imageName: "Xiphoid Process")

    ,

    BoneOrMuscle(imageName: "Zygomatic Bone")

    ,

    BoneOrMuscle(imageName: "Adductor Brevis")

    ,

    BoneOrMuscle(imageName: "Adductor Longus")

    ,

    BoneOrMuscle(imageName: "Adductor Magnus")

    ,

    BoneOrMuscle(imageName: "Bicep Femoris")

         ,

    BoneOrMuscle(imageName: "Brachialis")

         ,

    BoneOrMuscle(imageName: "Coracobrachialis")

         ,

    BoneOrMuscle(imageName: "Deltoid")

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

    BoneOrMuscle(imageName: "Iliacus")

         ,

    BoneOrMuscle(imageName: "Iliostalis")

         ,

    BoneOrMuscle(imageName: "Infraspinatus")

         ,

    BoneOrMuscle(imageName: "Intercostal Muscles")

         ,

    BoneOrMuscle(imageName: "Longissimus")

         ,

    BoneOrMuscle(imageName: "Pectoralis Minor")

         ,

    BoneOrMuscle(imageName: "Piriformis")

         ,

    BoneOrMuscle(imageName: "Psoas Major")

         ,

    BoneOrMuscle(imageName: "Rectus Abdominis")

         ,

    BoneOrMuscle(imageName: "Rhomboid Muscles")

         ,

    BoneOrMuscle(imageName: "Sartorius")

         ,

    BoneOrMuscle(imageName: "Semimembranosus")

         ,

    BoneOrMuscle(imageName: "Semitendinosus")

         ,

    BoneOrMuscle(imageName: "Serratus Anterior")

         ,

    BoneOrMuscle(imageName: "Soleus")

         ,

    BoneOrMuscle(imageName: "Spinalis")

         ,

    BoneOrMuscle(imageName: "Splenius Capitis")

         ,

    BoneOrMuscle(imageName: "Splenius")

         ,

    BoneOrMuscle(imageName: "Sternocleidomastoid")

         ,

    BoneOrMuscle(imageName: "Subscapularis")

         ,

    BoneOrMuscle(imageName: "Supraspinatus")

         ,

    BoneOrMuscle(imageName: "Teres Major")

         ,

    BoneOrMuscle(imageName: "Teres Minor")

         ,

    BoneOrMuscle(imageName: "Tibialis Anterior")

         ,

    BoneOrMuscle(imageName: "Trapezius")

         ,

    BoneOrMuscle(imageName: "Triceps Brachii")

         ,

    BoneOrMuscle(imageName: "Vastus Intermedialis")

         ,

    BoneOrMuscle(imageName: "Vastus Lateralis")

         ,

    BoneOrMuscle(imageName: "Vastus Medialis")

    // These are for the ones that I haven't found the cc licensced images for
//
//         ,
//
//    BoneOrMuscle(imageName: "Zygomatic Bcone")
//
//         ,
//
//    BoneOrMuscle(imageName: "2 Floating Ribs")
//
//    ,
//
//    BoneOrMuscle(imageName: "3 False Ribs")
//
//    ,
//
//    BoneOrMuscle(imageName: "Biceps Brachii")
//
//    ,
//
//    BoneOrMuscle(imageName: "Deltoid")
//
//    ,
//
//    BoneOrMuscle(imageName: "Diaphragm")
//
//    ,
//
//    BoneOrMuscle(imageName: "Splenius Capitis")
//
//    ,
//
//    BoneOrMuscle(imageName: "Splenius")
//
//    ,
//
//    BoneOrMuscle(imageName: "Transversus Thoracis")
//
//    ,
//
//    BoneOrMuscle(imageName: "Triceps Brachii")
//
    ]
    
    @State var boneOrMuscleToSavedList: [BoneOrMuscleToSavedList] = []
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainPageView(listOfPictures: $listOfPictures, muscleOrBoneToSavedList: $boneOrMuscleToSavedList)
                    .tabItem {
                        Label("Questions", systemImage: "list.dash")
                    }
                HistoryTabView(muscleOrBoneToSavedList: $boneOrMuscleToSavedList)
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
