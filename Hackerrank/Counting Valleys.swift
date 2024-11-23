//
//  Counting Valleys.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    var count = 0
    var sum = 0
    for p in path {
        if p == "U" {
            count += 1
            sum += count == 0 ? 1 : 0
        } else {
            count -= 1
        }
    }
    return sum
}
