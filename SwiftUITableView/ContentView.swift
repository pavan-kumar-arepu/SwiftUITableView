//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    
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
                List(leaders, id: \.name) { leader in
                    NavigationLink(destination: LeaderDetail(leader: leader)) {
                        LeaderRow(leader: leader)
                    }
                }
//                .background(Color.clear) // Clear background to let the gradient show through
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Indian Leaders")
            }
            .background(Color.clear)
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
