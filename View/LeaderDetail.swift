//
//  LeaderDetailView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import Foundation
import SwiftUI

struct LeaderDetail: View {
    
    var leader: Leader
    var leaders: [Leader]
    
    @State private var selectedLeader: Leader?
        
    var selectedLeaderDetails: Leader {
        selectedLeader ?? leader
    }
        
    var body: some View {
        ZStack {
            
            IndianGradient()
    
            VStack {
                ScrollView {
                    VSLeaderDetail(leader: leader)
                }
                
                HStack(spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 16) {
                            ForEach(leaders) { leader in
                                LeaderImage(size: 50, name: selectedLeader?.leaderLogo ?? "", alignment: .leading)
                                Button(action: {
                                    selectedLeader = leader
                                    LeaderImage(size: 50, name: selectedLeader?.leaderLogo ?? "", alignment: .leading)
                                }) {
                                    LeaderImage(size: 50, name: selectedLeader?.leaderLogo ?? "", alignment: .leading)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .frame(height: 50)
                .padding()

            }
//            .navigationBarTitleDisplayMode(.large)
//            .navigationBarTitle(selectedArtistDetails.name)
        }
        .navigationBarTitle(selectedLeader?.name ?? "")
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        let leader: Leader = Leader(id: 1, name: "Kumar", pmNumber: "12", party: "BJP", rulingPeriod: "1947 - 2023", about: "Very Good", achievements: "Bharat Ratna", leaderLogo: "Guljari-Nanda", signatureLogo: "Jawahar-Sign")
        LeaderDetail(leader: leader, leaders: [])
    }
}
