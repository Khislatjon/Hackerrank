//
//  Day of the Programmer.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func dayOfProgrammer(year: Int) -> String {
    if year < 1918 {
        return year.isMultiple(of: 4) ? "12.09.\(year)" : "13.09.\(year)"
    } else if year > 1918 {
        if year.isMultiple(of: 400) {
            return "12.09.\(year)"
        } else if year.isMultiple(of: 100) {
            return "13.09.\(year)"
        } else if year.isMultiple(of: 4) {
            return "12.09.\(year)"
        } else {
            return "13.09.\(year)"
        }
    } else {
        return "26.09.1918"
    }
}
