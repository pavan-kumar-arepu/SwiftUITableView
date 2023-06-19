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
                        Image("Nehru") // Replace "leaderImage" with the actual image name or system image name
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .scaleEffect(selected ? 1.5 : 1.0)
                            
                        
                        // Align image at the top
                        
                        Text("2002 - 2014, BJP")
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
