//
// Store.swift
//

import Foundation

// MARK: -

@propertyWrapper public struct Store<T: Codable> {
    
    // MARK: -
    
    private let key: String
    
    private let suiteName: String?
    
    private let defaultValue: T
    
    // MARK: -
    
    public var wrappedValue: T {
        get {
            return (try? userDefaults.getObject(T.self, forKey: key)) ?? defaultValue
        }
        set {
            try? userDefaults.setObject(newValue, forKey: key)
        }
    }
    
    // MARK: -
    
    private var userDefaults: UserDefaults {
        return UserDefaults(suiteName: suiteName) ?? .standard
    }
    
    // MARK: -
    
    public init(key: String, suiteName: String? = nil, defaultValue: T) {
        self.key = key
        self.suiteName = suiteName
        self.defaultValue = defaultValue
    }
}
