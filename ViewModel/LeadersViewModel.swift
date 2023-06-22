//
//  LeadersViewModel.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//

import Foundation


/*
Responsbile to get the data from FirebaseRemoteConfig and pass data to View
 */

class LeaderViewModel: ObservableObject {
    @Published var leaders: [Leader] = []
    
    init() {
        // Fetch leaders and update the leaders array
        //        leaders = DataService.shared.fetchLeaders()
    }
    
    func fetchLeaders() -> [Leader] {
        FirebaseRemoteConfigManager.shared.fetchRemoteConfigData { [weak self] leaders in
            if let leaders = leaders {
                self?.leaders = leaders
            }
        }
        return leaders
    }
    
    func fetchData(completion: @escaping (Bool) -> Void) {
        FirebaseRemoteConfigManager.shared.fetchRemoteConfigData { leaders in
            if let leadersArray = leaders {
                self.leaders = leadersArray
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
