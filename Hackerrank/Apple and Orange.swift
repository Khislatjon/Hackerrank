//
//  Apple and Orange.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let houseRange = s...t
    var appleLocations: [Int] = []
    var orangeLocations: [Int] = []
    for apple in apples {
        appleLocations.append(a + apple)
    }
    for orange in oranges {
        orangeLocations.append(b + orange)
    }
    var appleCounter = 0
    var orangeCounter = 0
    for appleLocation in appleLocations {
        if houseRange ~= appleLocation {
            appleCounter += 1
        }
    }
    for orangeLocation in orangeLocations {
        if houseRange ~= orangeLocation {
            orangeCounter += 1
        }
    }
    print(appleCounter)
    print(orangeCounter)
}
