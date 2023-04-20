//
// String+Common.swift
//

import Foundation

// MARK: -

public extension String {
    
    // MARK: -
    
    static var version: String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "0.1.0"
    }
    
    static var build: String {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
    }
    
    static var fullVersion: String {
        return "\(version) (\(build))"
    }
    
    // MARK: -
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
