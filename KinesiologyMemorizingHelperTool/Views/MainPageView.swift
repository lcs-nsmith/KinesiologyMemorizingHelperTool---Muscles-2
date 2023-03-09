//
//  MainPageView.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-03.
//

import SwiftUI

struct MainPageView: View {
    // MARK: Stored Properties
    
    @Binding var listOfPictures: [BoneOrMuscle]
    
    @Binding var muscleToSavedList: [BoneToSavedList]
    
    @State var correctAnswer: String = ""
    
    @State var firstTimeTaskRun: Bool = false
    
    @State var hasUserGuessed: Bool  = false
    
    @State var randomImage1 = 0
    @State var randomImage2 = 1
    @State var randomImage3 = 2
    
    @State var correctTextOpacity = false
    @State var wrongTextOpacity = false
    
    // MARK: Computed Properties
    @State var randomNumberToSelectTheCorrectImage = 2
    
    var body: some View {
        ZStack {
//            Color(.systemGray6)
//                .ignoresSafeArea()
            
            VStack {
                Text("Kinesiology Memorizing Helper Tool")
                    .font(.system(size: 35, weight: .medium, design: .serif))
                HStack {
                    
                    // Image 1
                    //                    randomImage1 = Int.random(in: 0..<listOfPictures.count)
                    Image(listOfPictures[randomImage1].imageName)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            // checks whether the user has already guessed
                            if hasUserGuessed == false {
                                // if the image guessed is correct then notify the user that they have guessed corretly, otherwise tell them they got it wrong + flip hasUserGuessed to true
                                if listOfPictures[randomImage1].imageName == correctAnswer {
                                    correctTextOpacity = true
                                    hasUserGuessed = true
                                } else if listOfPictures[randomImage1].imageName != correctAnswer {
                                    wrongTextOpacity = true
                                    hasUserGuessed = true
                                }
                            }
                        }
                    
                    Image(listOfPictures[randomImage2].imageName)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            if hasUserGuessed == false {
                                if listOfPictures[randomImage2].imageName == correctAnswer {
                                    correctTextOpacity = true
                                    hasUserGuessed = true
                                } else if listOfPictures[randomImage2].imageName != correctAnswer {
                                    wrongTextOpacity = true
                                    hasUserGuessed = true
                                }
                            }
                        }
                    // Image 3
                    //                    randomImage3 = Int.random(in: 0..<listOfPictures.count)
                    Image(listOfPictures[randomImage3].imageName)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            if hasUserGuessed == false {
                                if listOfPictures[randomImage3].imageName == correctAnswer {
                                    correctTextOpacity = true
                                    hasUserGuessed = true
                                } else if listOfPictures[randomImage3].imageName != correctAnswer {
                                    wrongTextOpacity = true
                                    hasUserGuessed = true
                                }
                            }
                        }
                }
                HStack (spacing: 120){
                            Text("Find The \(correctAnswer)")
                            .font(.title)
                            ZStack {
                                Text("Correct!")
                                    .font(.system(size: 35, weight: .medium, design: .serif))
                                    .foregroundColor(.green)
                                    .opacity(correctTextOpacity ? 1.0 : 0.0)
                                Text("Wrong")
                                    .font(.system(size: 35, weight: .medium, design: .serif))
                                    .foregroundColor(.red)
                                    .opacity(wrongTextOpacity ? 1.0 : 0.0)
                            }
                    
                        Button(action: {
                            if hasUserGuessed == true {
                                // save the current question to history
                                muscleToSavedList.append(BoneToSavedList(imageOne: listOfPictures[randomImage1].imageName, imageTwo: listOfPictures[randomImage2].imageName, imageThree: listOfPictures[randomImage3].imageName, whichAnswerIsCorrect: correctAnswer, isAnswerCorrect: correctTextOpacity))
                                
                                // reset hasUserGuessed
                                hasUserGuessed = false
                                
                                // reset feedback message
                                wrongTextOpacity = false
                                correctTextOpacity = false
                                
                                // generate new images
                                randomImage1 = Int.random(in: 0..<listOfPictures.count)
                                randomImage2 = Int.random(in: 0..<listOfPictures.count)
                                while randomImage2 == randomImage1 {
                                    randomImage2 = Int.random(in: 0..<listOfPictures.count)
                                }
                                randomImage3 = Int.random(in: 0..<listOfPictures.count)
                                while randomImage3 == randomImage1 || randomImage3 == randomImage2 {
                                    randomImage3 = Int.random(in: 0..<listOfPictures.count)
                                }
                                randomNumberToSelectTheCorrectImage = Int.random(in: 1...3)
                                
                                // assign a new correct image
                                if randomNumberToSelectTheCorrectImage == 1 {
                                    correctAnswer = listOfPictures[randomImage1].imageName
                                } else if randomNumberToSelectTheCorrectImage == 2 {
                                    correctAnswer = listOfPictures[randomImage2].imageName
                                } else if randomNumberToSelectTheCorrectImage == 3 {
                                    correctAnswer = listOfPictures[randomImage3].imageName
                                } else {
                                    print("error - randomNumberToSelectTheCorrectImage is broken")
                                }
                            }
                        }, label: {
                            Text("New Question")
                        })
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .task {
            if firstTimeTaskRun == false {
                // generate images
                randomImage1 = Int.random(in: 0..<listOfPictures.count)
                randomImage2 = Int.random(in: 0..<listOfPictures.count)
                while randomImage2 == randomImage1 {
                    randomImage2 = Int.random(in: 0..<listOfPictures.count)
                }
                randomImage3 = Int.random(in: 0..<listOfPictures.count)
                while randomImage3 == randomImage1 || randomImage3 == randomImage2 {
                    randomImage3 = Int.random(in: 0..<listOfPictures.count)
                }
                randomNumberToSelectTheCorrectImage = Int.random(in: 1...3)
                
                // assign a correct image
                if randomNumberToSelectTheCorrectImage == 1 {
                    correctAnswer = listOfPictures[randomImage1].imageName
                } else if randomNumberToSelectTheCorrectImage == 2 {
                    correctAnswer = listOfPictures[randomImage2].imageName
                } else if randomNumberToSelectTheCorrectImage == 3 {
                    correctAnswer = listOfPictures[randomImage3].imageName
                } else {
                    print("error - randomNumberToSelectTheCorrectImage is broken")
                }
                firstTimeTaskRun = true
            }
        }
    }
}
    //struct MainPageView_Previews: PreviewProvider {
    //    static var previews: some View {
    //        TabView {
    //            MainPageView()
    //                .tabItem {
    //                    Label("Questions", systemImage: "list.dash")
    //                }
    //            HistoryTabView()
    //                .tabItem {
    //                    Label("History", systemImage: "list.dash")
    //                }
    //            AllBonesAndMuscles()
    //                .tabItem {
    //                    Label("All Bones And Muscles", systemImage: "books.vertical")
    //                }
    //        }
    //    }
    //}
