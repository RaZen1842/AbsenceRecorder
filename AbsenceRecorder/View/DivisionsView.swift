//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stateController = StateController.shared
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationStack{
            List(stateController.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))) {
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
                        Button(action: { currentDate = currentDate.nextDay() }) {
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
