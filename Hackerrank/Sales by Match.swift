//
//  Sales by Match.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var count: [Int: Int] = [:]
    var sum = 0
    for a in ar {
        count[a, default: 0] += 1
    }
    for val in count.values {
        sum += val/2
    }
    return sum
}
