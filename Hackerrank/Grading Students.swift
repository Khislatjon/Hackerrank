//
//  Grading Students.swift
//  Hackerrank
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    var result: [Int] = []
    for grade in grades {
        if grade < 38 {
            result.append(grade)
        } else if (grade+1).isMultiple(of: 5) {
            result.append(grade+1)
        } else if (grade+2).isMultiple(of: 5) {
            result.append(grade+2)
        } else {
            result.append(grade)
        }
    }
    return result
}
