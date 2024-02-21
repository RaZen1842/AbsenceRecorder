//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    var divisions: [Division] = Division.examples
    var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code) { division in
                Text("\(division.code)")
                    .padding()
            }
            .navigationTitle(getShortDate())
            
        }
    }
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: currentDate)
    }
}
#Preview {
    ContentView()
}
