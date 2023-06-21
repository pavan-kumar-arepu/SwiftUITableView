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
    
    @State private var selected: Bool = false

    let defaultLeader: [Leader] = [Leader(id: 1, name: "Kumar", pmNumber: "12", party: "BJP", rulingPeriod: "1947 - 2023", about: "Very Good", achievements: "Bharat Ratna", leaderLogo: "Guljari-Nanda", signatureLogo: "Jawahar-Sign")]
    
    @State private var leaders = DataService.shared.getLeaders()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())] // Adjust the number of grid items as per your preference

    
    var body: some View {
        ZStack {
            
            IndianGradient()
    
            VStack {
                ScrollView {
                    VSLeaderDetail(leader: leader)
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                 
                        ForEach(leaders ?? defaultLeader) { leader in
                            LeaderImage(size: 50.0, name: leader.leaderLogo, alignment: .leading)
                                .padding(10)
                        }
                        .onTapGesture {
                            _ = LeaderDetail(leader: leader)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .padding()
        }
        .navigationBarTitle("\(leader.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}



struct LeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        let leader: Leader = Leader(id: 1, name: "Kumar", pmNumber: "12", party: "BJP", rulingPeriod: "1947 - 2023", about: "Very Good", achievements: "Bharat Ratna", leaderLogo: "Guljari-Nanda", signatureLogo: "Jawahar-Sign")
        LeaderDetail(leader: leader)
    }
}
