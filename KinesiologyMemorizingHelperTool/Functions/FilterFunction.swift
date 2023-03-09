//
//  FilterFunction.swift
//  KinesiologyMemorizingHelperTool
//
//  Created by Nathan on 2022-11-07.
//

import Foundation

func filtered(from list: [BoneOrMuscleToSavedList], selectionTrue: Int) -> [BoneOrMuscleToSavedList] {
    if selectionTrue == 1 {
        return list
    } else if selectionTrue == 2 {
        
        var filteredResultsTrue: [BoneOrMuscleToSavedList] = []
        
        for bone in list {
            if bone.isAnswerCorrect == true {
                filteredResultsTrue.append(bone)
            }
        }
        return filteredResultsTrue
    } else if selectionTrue == 3 {
        var filteredResultsFalse: [BoneOrMuscleToSavedList] = []
        
        for bone in list {
            if bone.isAnswerCorrect == false {
                filteredResultsFalse.append(bone)
            }
        }
        return filteredResultsFalse
    } else {
        return list
    }
}
