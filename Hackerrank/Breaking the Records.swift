//
//  Breaking the Records.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    guard scores.count >= 2 else { return [0, 0] }
    var min = scores[0]
    var max = scores[0]
    var minCount = 0
    var maxCount = 0
    
    for i in scores.indices {
        if min > scores[i] {
            min = scores[i]
            minCount += 1
        } else if max < scores[i] {
            max = scores[i]
            maxCount += 1
        }
    }
    
    return [maxCount, minCount]
}
