//
//  DataService.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//


import Foundation
import Firebase
import FirebaseRemoteConfig

class DataService {
    static let shared = DataService()
    private var leaders: [Leader] = []
    
    private init() {}
    
    func getLeaders() -> [Leader] {
        leaders = FirebaseRemoteConfigManager.shared.getLeaders()
        return leaders
    }
    
    func fetchLeaders() -> [Leader] {
        FirebaseRemoteConfigManager.shared.fetchRemoteConfigData { [weak self] leaders in
            if let leaders = leaders {
                self?.leaders = leaders
            }
        }
        return leaders
    }
}
