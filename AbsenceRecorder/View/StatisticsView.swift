//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Veturi, Shreyas (HJRM) on 27/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @ObservedObject var state: StateController = StateController.shared
    
    var body: some View {
        Text("Statistics: \(state.divisions[0].code)")
    }
}

#Preview {
    StatisticsView()
}
