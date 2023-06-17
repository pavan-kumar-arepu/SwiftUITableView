//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var leaders = [
        Leader(name: "Jawaharlal Nehru", startTime: "1947", endTime: "1952", party: "Congress Party"),
        
        Leader(name: "Narendra Modi", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party"),
    
        Leader(name: "Lal Bahadur Shastri", startTime: "1964", endTime: "1966", party: "Congress Party")
    ]
    
    var body: some View {
        NavigationView {
            List(leaders, id: \.name) { leader in
                NavigationLink(destination: LeaderDetailView(leader: leader)) {
                    LeaderRow(leader: leader)
                }
            }
            .navigationTitle("Leaders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 VStack {
     Image(systemName: "globe")
         .imageScale(.large)
         .foregroundColor(.accentColor)
     Text("Hello, world!")
 }
 .padding()
 */
