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
    
    var leaders = [
        Leader(name: "Jawaharlal Nehru", startTime: "1947", endTime: "1952", party: "Congress Party", imageName: "Atal-Bihari"),
        Leader(name: "Narendra Modi", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party", imageName: "Charan-singh"),
        Leader(name: "Lal Bahadur Shastri", startTime: "1964", endTime: "1966", party: "Congress Party", imageName: "Narendra-Modi"),
        Leader(name: "Jawaharlal Nehru One", startTime: "1947", endTime: "1952", party: "Congress Party", imageName: "PV-Narasimha-Rao"),
        Leader(name: "Narendra Modi One", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party", imageName: "Rajiv-Gandhi"),
        Leader(name: "Lal Bahadur Shastri One", startTime: "1964", endTime: "1966", party: "Congress Party", imageName: "Deve-Gowda"),
        Leader(name: "Jawaharlal Nehru Two", startTime: "1947", endTime: "1952", party: "Congress Party", imageName: "PV-Narasimha-Rao"),
        Leader(name: "Narendra Modi Two", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party", imageName: "Manmohan-Singh"),
        Leader(name: "Lal Bahadur Shastri Two", startTime: "1964", endTime: "1966", party: "Congress Party", imageName: "Nehru")
    ]
    
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
                        Image("Nehru") // Replace "leaderImage" with the actual image name or system image name
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .frame(maxWidth: .infinity, alignment: .top) // Align image at the top
                        
                        Text("\(leader.startTime) - \(leader.endTime) (\(leader.party))")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)// Horizontally center the text
                        
                        Spacer() // Create additional space at the bottom
                        
                        
                        HStack {
                            Text("Details:").bold() + Text(" Jawaharlal Nehru was an Indian anti-colonial nationalist, secular humanist, social democrat, and author who was a central figure in India during the middle third of the 20th century. Nehru was a principal leader of the Indian nationalist movement in the 1930s and 1940s")
                        }
                        Spacer()
                        
                        HStack {
                            Text("Awards:").bold() + Text(" Jawaharlal Nehru was an Indian anti-colonial nationalist, secular humanist, social democrat, and author who was a central figure in India during the middle third of the 20th century. Nehru was a principal leader of the Indian nationalist movement in the 1930s and 1940s")
                        }
                        
                        HStack {
                            Text("Background:").bold() + Text(" Jawaharlal Nehru was an Indian anti-colonial nationalist, secular humanist, social democrat, and author who was a central figure in India during the middle third of the 20th century. Nehru was a principal leader of the Indian nationalist movement in the 1930s and 1940s")
                        }
                        
                        
                        HStack {
                            Text("Achivements:").bold() + Text(" Jawaharlal Nehru was an Indian anti-colonial nationalist, secular humanist, social democrat, and author who was a central figure in India during the middle third of the 20th century. Nehru was a principal leader of the Indian nationalist movement in the 1930s and 1940s")
                        }
                        
                        HStack {
                            // Align image at the top
                            Text("Signature:").bold()
                            Image("Manmohan-Sign") // Replace "leaderImage" with the actual image name or system image name
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
                            Image(leader.imageName)
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
