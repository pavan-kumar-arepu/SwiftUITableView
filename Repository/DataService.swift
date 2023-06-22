//
//  DataService.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//


import Foundation
import Firebase
import FirebaseRemoteConfig


/*
 To Load Leader Image in detail screen
 - parameter:
    - size: icon size
    - name: icon name
    - alignment: preferable alignment
 - returns: View
 */

class DataService {
    static let shared = DataService()
    private var leaders: [Leader] = []
    
    private init() {}
    
    func getLeaders() -> [Leader] {
        return FirebaseRemoteConfigManager.shared.getLeaders
    }
}
