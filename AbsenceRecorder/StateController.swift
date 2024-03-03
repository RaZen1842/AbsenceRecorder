//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 27/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    static let shared = StateController()
    
    private init() {
        loadFromFile()
    }
    
    func loadFromFile() {
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json") {
            divisions = loaded
        }
        
    }
    
    func saveToFile() {
        FileManager.default.save(to: "divisions.json", object: divisions)
    }
    
    
}
