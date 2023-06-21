//
//  VerticalScrollLeaderDetail.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

// VerticalScrollLeaderDetail
struct VSLeaderDetail: View {
    var leader: Leader
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                LeaderImage(size: 200.0, name: leader.leaderLogo, alignment: .top)
                
                HStack {
                    Text("\(leader.rulingPeriod) - \(leader.party)")
                        .font(.subheadline)
                }
                
                Spacer()
                
                HStack {
                    Text("About:").bold() +
                    Text("\n") +
                    Text(leader.about)
                }
                Spacer()
                
                HStack {
                    Text("Achievements:").bold() +
                    Text("\n") +
                    Text(leader.achievements)
                }
                
                HStack {
                    Text("Signature:").bold()
                    Signature(name: leader.signatureLogo)
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct VSLeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        let leader: Leader = Leader(id: 1, name: "Kumar", pmNumber: "12", party: "BJP", rulingPeriod: "1947 - 2023", about: "IndianLeaders[49277:999645] [connection] nw_connection_copy_protocol_metadata_internal_block_invoke [C2] Client called nw_connection_copy_protocol_metadata_internal on unconnected nw_connection", achievements: "Bharat RatnaBharat RatnaBharat Ratna", leaderLogo: "Guljari-Nanda", signatureLogo: "Jawahar-Sign")
        VSLeaderDetail(leader: leader)
    }
}
