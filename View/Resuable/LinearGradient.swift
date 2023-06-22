//
//  LinearGradient.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct IndianGradient: View {
    var body: some View {
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
    }
}



struct IndianGradient_Previews: PreviewProvider {
    static var previews: some View {
        IndianGradient()
    }
}
