//
//  Bill Division.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let calculated = (bill.reduce(0, +) - bill[k]) / 2
    if calculated == b {
        print("Bon Appetit")
    } else {
        print(b-calculated)
    }
}
