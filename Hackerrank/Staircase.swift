//
//  Staircase.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func staircase(n: Int) -> Void {
    guard n > 0 else { return }
    for row in 1...n {
        var spaceCount = n - row
        var str = ""
        while spaceCount > 0 {
            str.append(" ")
            spaceCount -= 1
        }
        
        var i = 0
        while i < row {
            str.append("#")
            i += 1
        }
        print(str)
    }
}
