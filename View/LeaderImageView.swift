//
//  LeaderImageView.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct LeaderImage: View {
    var size: CGFloat
    var name: String
    var alignment: Alignment
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .frame(maxWidth: .infinity, alignment: alignment)
    }
}

struct LeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderImage(size: 200.0, name: "Atal-Bihari", alignment: .top)
    }
}



struct Signature: View {
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, alignment: .top)
    }
}

struct Signature_Previews: PreviewProvider {
    static var previews: some View {
        Signature(name: "Jawahar-Sign")
    }
}
