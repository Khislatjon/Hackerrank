//
//  Diagonal Difference.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    guard !arr.isEmpty else { return 0 }
    var i = 0
    var j = arr[0].count - 1
    var leftSum = 0
    var rightSum = 0
    
    for row in arr {
        leftSum += row[i]
        rightSum += row[j]
        i += 1
        j -= 1
    }
    
    return abs(leftSum - rightSum)
}
