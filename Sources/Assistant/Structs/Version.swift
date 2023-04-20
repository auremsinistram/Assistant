//
// Version.swift
//

import Foundation

// MARK: -

public struct Version: Codable, Hashable, Comparable, CustomStringConvertible {
    
    // MARK: -
    
    private enum Key: CodingKey {
        
        // MARK: -
        
        case major
        case minor
        case patch
    }
    
    // MARK: -
    
    public static var empty: Version {
        return Version()
    }
    
    public static var first: Version {
        return Version(minor: 1)
    }
    
    public static var current: Version {
        return Version(string: .version) ?? .first
    }
    
    // MARK: -
    
    public var major: Int
    public var minor: Int
    public var patch: Int
    
    public var string: String {
        return "\(major).\(minor).\(patch)"
    }
    
    // MARK: -
    
    public init(
        major: Int = 0,
        minor: Int = 0,
        patch: Int = 0
    ) {
        self.major = major
        self.minor = minor
        self.patch = patch
    }
    
    public init?(string: String) {
        let array = string.components(separatedBy: ".")
        guard
            let major = Int(array[safe: 0] ?? ""),
            let minor = Int(array[safe: 1] ?? ""),
            let patch = Int(array[safe: 2] ?? "")
        else {
            return nil
        }
        self.init(
            major: major,
            minor: minor,
            patch: patch
        )
    }
    
    // MARK: -
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)
        self.major = try container.decode(Int.self, forKey: .major)
        self.minor = try container.decode(Int.self, forKey: .minor)
        self.patch = try container.decode(Int.self, forKey: .patch)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        try container.encode(major, forKey: .major)
        try container.encode(minor, forKey: .minor)
        try container.encode(patch, forKey: .patch)
    }
    
    // MARK: -
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(major)
        hasher.combine(minor)
        hasher.combine(patch)
    }
    
    // MARK: -
    
    public static func == (lhs: Version, rhs: Version) -> Bool {
        return lhs.major == rhs.major && lhs.minor == rhs.minor && lhs.patch == rhs.patch
    }
    
    public static func < (lhs: Version, rhs: Version) -> Bool {
        if lhs.major == rhs.major {
            if lhs.minor == rhs.minor {
                return lhs.patch < rhs.patch
            }
            return lhs.minor < rhs.minor
        }
        return lhs.major < rhs.major
    }
    
    // MARK: -
    
    public var description: String {
        return string
    }
}
