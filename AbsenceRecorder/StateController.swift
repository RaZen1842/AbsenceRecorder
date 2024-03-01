//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 27/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = Division.examples
    
    static let shared = StateController()
    
    private init() {}
}
