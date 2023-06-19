//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import SwiftUI
import Firebase
import FirebaseRemoteConfig

struct ContentView: View {
    
    @State var remoteLeaders: [Leader] = []
    var leaderVM = LeaderViewModel()
    
    @State private var isLoading = false
    
    var body: some View {
        
        NavigationView {
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
                
                if isLoading {
                    ProgressView() // Show loading indicator while fetching data
                } else {
                    Text("Data Loaded!") // Show content when data is loaded
                    List(remoteLeaders, id: \.name) { (leader: Leader) in
                        NavigationLink(destination: LeaderDetail(leader: leader)) {
                            LeaderRow(leader: leader)
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                    .navigationBarTitle("Indian Leaders")
                }
            }
            .background(Color.clear)
        }
        .onAppear {
            isLoading = true
            FirebaseRemoteConfigManager.shared.fetchRemoteConfigData { leaders in
                isLoading = false
                if let leaders = leaders {
                    remoteLeaders = leaders
                }
            }
        }
        .background(Color.clear)
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
