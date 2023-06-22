//
//  LeaderListView.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

/*
Responsbile to render list of Leaders 
 - returns: LeaderListView
 */
struct LeaderListView: View {
    
    var leaderVM = LeaderViewModel()

    @State private var leaders: [Leader] = []
    @State private var isLoading = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                IndianGradient()
                
                if isLoading {
                    ProgressView() // Show loading indicator while fetching data
                } else {
                    Text("Data Loaded!") // Show content when data is loaded
                    List(leaders) { leader in
                        NavigationLink(destination: LeaderDetail(leader: leader, leaders: leaders)){
                            LeaderRow(leader: leader)
                        }
                    }
                    .navigationTitle(" Leaders")
                }
            }
        }
        .onAppear {
            isLoading = true
            loadData()
        }
    }
    
    func loadData() {
        leaderVM.fetchData { status in
            isLoading = false
            if status {
                leaders = leaderVM.leaders
            } else {
                print("Error retrieving data")
            }
        }
    }
}

struct LeaderListView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderListView()
    }
}
