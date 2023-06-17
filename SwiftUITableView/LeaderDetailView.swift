//
//  LeaderDetailView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import Foundation
import SwiftUI

struct LeaderDetailView: View {
    var leader: Leader
    
    var body: some View {
        VStack {
            Text("Name: \(leader.name)")
                .font(.headline)
            Text("Start Time: \(leader.startTime)")
                .font(.subheadline)
            Text("End Time: \(leader.endTime)")
                .font(.subheadline)
            Text("Party: \(leader.party)")
                .font(.subheadline)
        }
        .padding()
        .navigationTitle(leader.name)
    }
}
