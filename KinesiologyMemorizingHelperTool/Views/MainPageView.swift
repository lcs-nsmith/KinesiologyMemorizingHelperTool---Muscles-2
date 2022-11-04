//
//  MainPageView.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct MainPageView: View {
    // MARK: Stored Properties
    
    var listOfPictures: [Bone] = [
        
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
    
    
    // MARK: Computed Properties
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                Text("Nathan's Kinesiology Memorizing Helper Tool")
                    .font(.system(size: 35, weight: .medium, design: .serif))
                HStack {
                    let rand = Int.random(in: 0..<listOfPictures.count)
                    Image(listOfPictures[rand].imageName)
                        .resizable()
                        .scaledToFit()
                    Image("patella")
                        .resizable()
                        .scaledToFit()
                    Image("tibia")
                        .resizable()
                        .scaledToFit()
                }
                ZStack {
                    Text("Correct!")
                        .font(.system(size: 35, weight: .medium, design: .serif))
                        .foregroundColor(.green)
                    Text("Wrong")
                        .font(.system(size: 35, weight: .medium, design: .serif))
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            MainPageView()
                .tabItem {
                    Label("Questions", systemImage: "list.dash")
                }
            HistoryTabView()
                .tabItem {
                    Label("History", systemImage: "list.dash")
                }
            AllBonesAndMuscles()
                .tabItem {
                    Label("All Bones And Muscles", systemImage: "books.vertical")
                }
        }
    }
}
