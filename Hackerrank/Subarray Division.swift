//
//  Subarray Division.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var l = 0
    var sum = 0
    var count = 0
    for r in s.indices {
        sum += s[r]
        if r - l + 1 == m {
            count += sum == d ? 1 : 0
            sum -= s[l]
            l += 1
        }
    }
    return count
}
