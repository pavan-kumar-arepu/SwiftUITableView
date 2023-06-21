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
    private var leaders: [Leader]? = []
    
    private init() {}
    
    func getLeaders() -> [Leader]? {
        
        guard let leaders = FirebaseRemoteConfigManager.shared.getLeaders else {
            return nil
        }
        return leaders
    }
    
//    func fetchLeaders() -> [Leader?] {
//        FirebaseRemoteConfigManager.shared.fetchRemoteConfigData { [weak self] leaders in
//            if let leaders = leaders {
//                self?.leaders = leaders
//            }
//        }
//
//        guard let received le
//        return leaders
//    }
}
