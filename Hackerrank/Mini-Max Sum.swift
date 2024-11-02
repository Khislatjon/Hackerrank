//
//  Mini-Max Sum.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    let sumAll = arr.reduce(0, +)
    let minSum = sumAll - (arr.max() ?? 0)
    let maxSum = sumAll - (arr.min() ?? 0)
    print("\(minSum) \(maxSum)")
}
