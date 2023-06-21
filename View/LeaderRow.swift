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
            Image(leader.leaderLogo) // Replace "leaderImage" with the actual image name or system image name
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                                        .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text("\(leader.name)")
                    .font(.headline)
                Text("\(leader.party)")
                    .font(.subheadline)
            }
        }
    }
}


struct LeaderRow_Previews: PreviewProvider {
    static var previews: some View {
        let leader: Leader = Leader(id: 1, name: "Kumar", pmNumber: "12", party: "BJP", rulingPeriod: "1947 - 2023", about: "Very Good", achievements: "Bharat Ratna", leaderLogo: "Guljari-Nanda", signatureLogo: "Jawahar-Sign")
        LeaderRow(leader: leader)
    }
}
