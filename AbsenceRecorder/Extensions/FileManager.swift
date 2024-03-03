//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 03/03/2024.
//

import Foundation

extension FileManager {
    private func getDocumentDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func save<T: Codable>(to filePath: String, object: T) {
        //create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            //take encoded objects and convert them to string
            if let json = String(data: encoded, encoding: .utf8) {
                let url = getDocumentDirectory().appendingPathComponent(filePath)
                do {
                    //write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Unable to form JSON String")
            }
        }
    }
    
    
    func load<T: Codable>(from filepath: String) -> T? {
        let url = getDocumentDirectory().appendingPathComponent(filepath)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            } else {
                print("Failed to decode")
                return nil
            }
        } else {
            print("Couldn't find file at given path")
            return nil
        }
    }
    
}
