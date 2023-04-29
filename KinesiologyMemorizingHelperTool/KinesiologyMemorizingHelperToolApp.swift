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
       
    BoneOrMuscle(imageName: "Brachialis")

    ,

    BoneOrMuscle(imageName: "Brachioradialis")

    ,

    BoneOrMuscle(imageName: "Coracobrachialis")

    ,

    BoneOrMuscle(imageName: "Erector Spinae Group (Spinalis, Longissimus, Iliocostalis)")

    ,

    BoneOrMuscle(imageName: "External Oblique")

    ,

    BoneOrMuscle(imageName: "Iliocostalis")

    ,

    BoneOrMuscle(imageName: "Infraspinatus")

    ,

    BoneOrMuscle(imageName: "Intercostal Muscles")

    ,

    BoneOrMuscle(imageName: "Latissimus Dorsi")

    ,

    BoneOrMuscle(imageName: "Longissimus")

    ,

    BoneOrMuscle(imageName: "Pectoralis Minor")

    ,

    BoneOrMuscle(imageName: "Rectus Abdominis")

    ,

    BoneOrMuscle(imageName: "Rhomboid Major and Minor")

    ,

    BoneOrMuscle(imageName: "Serratus Anterior")

    ,

    BoneOrMuscle(imageName: "Spinalis")

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

    BoneOrMuscle(imageName: "Transverse Abdominis")

    ,

    BoneOrMuscle(imageName: "Trapezius")

   ,

    BoneOrMuscle(imageName: "Piriformis")
    
   ,

    BoneOrMuscle(imageName: "Rectus Femoris")

   ,

    BoneOrMuscle(imageName: "Biceps Femoris")

    ,

    BoneOrMuscle(imageName: "Adductor Longus")

    ,

    BoneOrMuscle(imageName: "Adductor Magnus")

    ,

    BoneOrMuscle(imageName: "Gastrocnemius")

    ,

    BoneOrMuscle(imageName: "Gluteus Minimus")

    ,

    BoneOrMuscle(imageName: "Gracilis")

    ,

    BoneOrMuscle(imageName: "Pectineus")

    ,

    BoneOrMuscle(imageName: "Sartorius")

    ,

    BoneOrMuscle(imageName: "Soleus")

    ,

    BoneOrMuscle(imageName: "Vastus Intermedius")

    ,

    BoneOrMuscle(imageName: "Vastus Medialis")

    ,

    BoneOrMuscle(imageName: "Semimembranosus")

    ,

    BoneOrMuscle(imageName: "Semitendinosus")

    ,

    BoneOrMuscle(imageName: "Wrist and Finger Flexors")
    
    ,

    BoneOrMuscle(imageName: "Adductor Brevis")

    ,

    BoneOrMuscle(imageName: "Gluteus Maximus")

    ,

    BoneOrMuscle(imageName: "Gluteus Medius")

    ,

    BoneOrMuscle(imageName: "Iliopsoas (Psoas Major & Iliacus)")

    ,

    BoneOrMuscle(imageName: "Psoas minor")

    ,

    BoneOrMuscle(imageName: "Tensor Fascia Latae")

    ,

    BoneOrMuscle(imageName: "Tibialis Anterior")

    ,

    BoneOrMuscle(imageName: "Vastus Lateralis")

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

    BoneOrMuscle(imageName: "2 Floating Ribs")
    
    ,
         
    BoneOrMuscle(imageName: "3 False Ribs")
    
    ,
    
    BoneOrMuscle(imageName: "Biceps Brachii")
    
    ,
    
    BoneOrMuscle(imageName: "Deltoid")
    
    ,
    
    BoneOrMuscle(imageName: "Diaphragm")
    
    ,
    
    BoneOrMuscle(imageName: "Splenius Capitis")
    
    ,
    
    BoneOrMuscle(imageName: "Splenius")
    
    ,
    
    BoneOrMuscle(imageName: "Transversus Thoracis")
    
    ,
    
    BoneOrMuscle(imageName: "Triceps Brachii")

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
