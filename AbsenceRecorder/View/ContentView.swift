//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division] = Division.examples
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(actions: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
            
        }
    }
}
#Preview {
    ContentView()
}
