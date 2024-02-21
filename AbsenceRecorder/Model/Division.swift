//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    #if DEBUG
    
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(firstName: "First Name\(i)", lastName: "Last Name\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "CComZ-1", of: 8),
                           Division.createDivision(code: "CMdpW-2", of: 14),
                           Division.createDivision(code: "CMdaY-3", of: 14),
                           Division.createDivision(code: "CEcoV-2", of: 12)]
    
    #endif
    
    
}
