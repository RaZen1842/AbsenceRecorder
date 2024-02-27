//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
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
        .environmentObject(StateController())
}