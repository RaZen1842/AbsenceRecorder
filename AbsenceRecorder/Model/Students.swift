//
//  Students.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import Foundation

class Student {
    let firstName: String
    let lastName: String
    let birthday: Date
    
    init(firstName: String, lastName: String, birthday: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
    }
}
