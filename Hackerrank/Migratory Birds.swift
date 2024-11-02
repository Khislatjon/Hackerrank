//
//  Migratory Birds.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for el in arr {
        dict[el, default: 0] += 1
    }
    var maxCount = 0
    var minEl = 0
    
    for (el, count) in dict {
        if maxCount < count {
            maxCount = count
            minEl = el
        } else if maxCount == count {
            minEl = min(minEl, el)
        }
    }
    return minEl
}
