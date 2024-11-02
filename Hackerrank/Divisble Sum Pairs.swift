//
//  Divisble Sum Pairs.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    for i in 0..<ar.count-1 {
        for j in (i+1)..<ar.count {
            if (ar[i] + ar[j]).isMultiple(of: k) {
                count += 1
            }
        }
    }
    return count
}
