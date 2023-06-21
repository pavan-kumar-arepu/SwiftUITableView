//
//  FirebaseRemoteConfigManager.swift
//  IndianLeaders
//
//  Created by Pavankumar Arepu on 19/06/23.
//

import Foundation
import Firebase
import FirebaseRemoteConfig

class FirebaseRemoteConfigManager {
    static let shared = FirebaseRemoteConfigManager()
    private let remoteConfig = RemoteConfig.remoteConfig()
    private var leaders: [Leader]?

    private init() {
        let settings = RemoteConfigSettings()
        remoteConfig.configSettings = settings
        remoteConfig.setDefaults(fromPlist: "GoogleService-Info")
    }
    
    var getLeaders: [Leader]? {
        guard let receivedLeaders = leaders else {
            return nil
        }
        return receivedLeaders
    }

    func fetchRemoteConfig(completion: @escaping () -> Void) {
        remoteConfig.fetchAndActivate { _, error in
            if let error = error {
                print("Error fetching remote config: \(error)")
            } else {
                completion()
                print("Remote Fetch Completed!")
            }
        }
    }
    
    func fetchRemoteConfigData(completion: @escaping ([Leader]?) -> Void) {
        let remoteConfig = RemoteConfig.remoteConfig()

        remoteConfig.fetch(withExpirationDuration: 0) { [weak self] status, error in
            if error == nil {
                remoteConfig.activate { [self] _, _ in
                    let json = remoteConfig.configValue(forKey: Constants.remoteJsonKeyName).jsonValue

                    do {
                        if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: []) {
                            let decoder = JSONDecoder()
                            self?.leaders = try decoder.decode([String: [Leader]].self, from: jsonData)["leaders"] ?? []
                            completion(self?.leaders)
                        } else {
                            completion(nil)
                        }
                    } catch {
                        print("Error decoding leaders: \(error)")
                        completion(nil)
                    }
                }
            } else {
                print("Error fetching remote config: \(error?.localizedDescription ?? "")")
                completion(nil)
            }
        }
    }
    
    private func convertToData(json: Any) throws -> Data? {
        let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
        return jsonData
    }
}
