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
    
        Leader(name: "Lal Bahadur Shastri", startTime: "1964", endTime: "1966", party: "Congress Party"),
        
        Leader(name: "Jawaharlal Nehru One", startTime: "1947", endTime: "1952", party: "Congress Party"),
        
        Leader(name: "Narendra Modi One", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party"),
    
        Leader(name: "Lal Bahadur Shastri One", startTime: "1964", endTime: "1966", party: "Congress Party"),
        
        Leader(name: "Jawaharlal Nehru Two", startTime: "1947", endTime: "1952", party: "Congress Party"),
        
        Leader(name: "Narendra Modi Two", startTime: "2014", endTime: "OnGoing", party: "Bharatiya Janata Party"),
    
        Leader(name: "Lal Bahadur Shastri Two", startTime: "1964", endTime: "1966", party: "Congress Party")
    ]
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            List(leaders, id: \.name) { leader in
                NavigationLink(destination: LeaderDetailView(leader: leader)) {
                    LeaderRow(leader: leader)
                }
                .opacity(isShowing ? 1 : 0)
                .animation(.easeIn(duration: 4.0))
            }
            .onAppear{
                isShowing = true
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

/*
 @State private var isShowing = false
     
     var body: some View {
         NavigationView {
             List {
                 ForEach(leaders, id: \.name) { leader in
                     LeaderRow(leader: leader)
                         .opacity(isShowing ? 1 : 0)
                         .animation(.easeInOut(duration: 0.5))
                 }
             }
             .onAppear {
                 isShowing = true
             }
             .navigationTitle("Leaders")
         }
     }
 */
