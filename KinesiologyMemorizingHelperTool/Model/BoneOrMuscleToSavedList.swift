//
//  BoneToSavedList.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-07.
//

import Foundation

struct BoneOrMuscleToSavedList: Identifiable {
    let id = UUID()
    let imageOne: String
    let imageTwo: String
    let imageThree: String
    let whichAnswerIsCorrect: String
    let isAnswerCorrect: Bool
}
