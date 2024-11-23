//
//  Drawing Book.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    var left = p / 2
    var right = (n - p + (n % 2 == 0 ? 1 : 0)) / 2
    return min(left, right)
}
