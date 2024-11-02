//
//  Time Conversion.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func timeConversion(s: String) -> String {
    var time = String(s.dropLast(2))
    if s.hasSuffix("AM") {
        if time.hasPrefix("12") {
            time.replaceSubrange(..<s.index(s.startIndex, offsetBy: 2), with: "00")
        }
        return time
    } else {
        if !time.hasPrefix("12") {
            let hour = (Int(time.prefix(2)) ?? 0) + 12
            time.replaceSubrange(..<s.index(s.startIndex, offsetBy: 2), with: "\(hour)")
        }
    }
    return time
}
