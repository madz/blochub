//
//  Environment.swift
//  Runner
//
//  Created by Mark Angelo Diesta on 6/4/20.
//

import Foundation

public enum Environment {
  // MARK: - Keys
  enum Keys {
    enum Plist {
      static let googleMapApiKey = "GOOGLE_MAP_API_KEY"
    }
  }

  // MARK: - Plist
  private static let infoDictionary: [String: Any] = {
    guard let dict = Bundle.main.infoDictionary else {
      fatalError("Plist file not found")
    }
    return dict
  }()


  static let googleMapKey: String = {
    guard let apiKey = Environment.infoDictionary[Keys.Plist.googleMapApiKey] as? String else {
      fatalError("API Key not set in plist for this environment")
    }
    return apiKey
  }()
}
