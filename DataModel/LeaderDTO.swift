//
//  LeaderDTO.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//

import Foundation

struct Leader: Codable {
    let name: String
    let pmNumber: String
    let party: String
    let rulingPeriod: String
    let about: String
    let achievements: String
    let leaderLogo: String
    let signatureLogo: String
}
