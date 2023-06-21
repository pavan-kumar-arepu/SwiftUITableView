//
//  LeadersViewModel.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//

import Foundation

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
    
    
}
