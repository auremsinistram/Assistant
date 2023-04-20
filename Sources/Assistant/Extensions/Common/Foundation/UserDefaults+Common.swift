//
// UserDefaults+Common.swift
//

import Foundation

// MARK: -

public extension UserDefaults {
    
    // MARK: -
    
    func getObject<T: Codable>(_ type: T.Type, forKey key: String) throws -> T? {
        guard let data = data(forKey: key) else {
            return nil
        }
        return try JSONDecoder().decode(type, from: data)
    }
    
    func setObject<T: Codable>(_ object: T?, forKey key: String) throws {
        guard let object = object else {
            removeObject(forKey: key)
            return
        }
        let data = try JSONEncoder().encode(object)
        set(data, forKey: key)
    }
}
