//
//  Birthday Cake Candles.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    guard !candles.isEmpty else { return 0 }
    let max = candles.max() ?? candles[0]
    var dict: [Int: Int] = [:]
    for candle in candles {
        dict[candle, default: 0] += 1
    }
    return dict[max, default: 0]
}
