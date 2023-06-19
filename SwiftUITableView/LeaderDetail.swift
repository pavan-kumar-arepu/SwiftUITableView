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

    var leaders = DataService.shared.getLeaders()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())] // Adjust the number of grid items as per your preference

    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.orange.opacity(0.5),
                    Color.white.opacity(0.5),
                    Color.green.opacity(0.5)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        Image(leader.leaderLogo) // Replace "leaderImage" with the actual image name or system image name
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .frame(maxWidth: .infinity, alignment: .top)
                        
                        // Align image at the top
                        Text("\(leader.rulingPeriod) - \(leader.party)")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)// Horizontally center the text
                        
                        Spacer() // Create additional space at the bottom
                        
                        HStack {
                            Text("About:").bold() + Text(leader.about)
                        }
                        Spacer()
                        
                        HStack {
                            Text("Achievements:").bold() + Text(leader.achievements)
                        }
                        
                        HStack {
                            // Align image at the top
                            Text("Signature:").bold()
                            Image(leader.signatureLogo) // Replace "leaderImage" with the actual image name or system image name
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, alignment: .top)
                        }
                        Spacer() // Create additional space at the bottom
                    }
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(leaders, id: \.name) { leader in
                            Image("Manmohan-Singh")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .padding(10)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .padding()
        }
        .navigationBarTitle("\(leader.name)")
    }
}
