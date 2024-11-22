//
//  Foming A Magic Square.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

func formingMagicSquare(s: [[Int]]) -> Int {
    let all = [
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]]
    ]
    
    var minChange = Int.max
    for c in all {
        var diff = 0
        for i in 0..<3 {
            for j in 0..<3 {
                diff += abs(c[i][j] - s[i][j])
            }
        }
        minChange = min(minChange, diff)
    }
    return minChange
}
