//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 29/02/2024.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student, isAbsent: Bool) {
        self.student = student
        self.isAbsent = isAbsent
    }
    
    #if DEBUG
    
    static let example = StudentAbsence(student: Student.example, isAbsent: true)
    
    #endif
    
}
