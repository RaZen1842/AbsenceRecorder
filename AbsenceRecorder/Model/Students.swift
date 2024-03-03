//
//  Students.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import Foundation

class Student: Codable {
    let firstName: String
    let lastName: String
    let birthday: Date
    
    init(firstName: String, lastName: String, birthday: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(firstName: "Lionel", lastName: "Messi", birthday: Date())
    static let examples = [example]
    #endif
}
