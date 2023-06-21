//
//  LeaderGridItem.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct LeaderGrid: View {
    let gridIcon: String
    
    var body: some View {
        HStack {
//            LeaderImage(size: 50.0, name: gridIcon, alignment: .leading)
            LeaderImage(size: 50.0, name: gridIcon, alignment: .leading)
                .padding(10)
        }
        .padding()
    }
}

struct LeaderGrid_Previews: PreviewProvider {
    static var previews: some View {
        LeaderGrid(gridIcon: "Indira-Gandhi")
    }
}

