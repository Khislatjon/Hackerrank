//
//  Number Line Jumps.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var first = x1
    var second = x2
    guard v1 > v2 else { return "NO" }
    while first < second {
        first += v1
        second += v2
    }
    return first == second ? "YES" : "NO"
}
