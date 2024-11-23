//
//  Climbing the Leaderboard.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var ranks: [Int] = []
    let uniqueRanks: [Int] = Set(ranked).sorted()
    var i = 0
    let n = uniqueRanks.count
    
    for pl in player {
        while i < n && uniqueRanks[i] <= pl {
            i += 1
        }
        ranks.append(n-i+1)
    }
    return ranks
}
