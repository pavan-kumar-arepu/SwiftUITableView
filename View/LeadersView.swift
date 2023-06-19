//
//  LeadersView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import Foundation
import SwiftUI

struct LeaderRow: View {
    var leader: Leader
    
    var body: some View {
        HStack {
            Image("Nehru") // Replace "leaderImage" with the actual image name or system image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text("\(leader.name)")
                    .font(.headline)
                Text("\(leader.startTime) - \(leader.endTime)")
                    .font(.subheadline)
                Text("\(leader.party)")
                    .font(.subheadline)
            }
            .padding()
        }
    }
}
