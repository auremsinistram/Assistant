//
// Range.swift
//

import Foundation

// MARK: -

@propertyWrapper public struct Range<T: Comparable> {
    
    // MARK: -
    
    private let lowerBound: T
    private let upperBound: T
    
    private let isLooped: Bool
    
    // MARK: -
    
    public var wrappedValue: T {
        get {
            return value
        }
        set {
            value = min(max(newValue, lowerBound), upperBound)
            if isLooped, value == upperBound {
                value = lowerBound
            }
        }
    }
    
    // MARK: -
    
    private var value: T
    
    // MARK: -
    
    public init(lowerBound: T, upperBound: T, isLooped: Bool = false) {
        guard lowerBound < upperBound else {
            fatalError()
        }
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        self.isLooped = isLooped
        self.value = lowerBound
    }
}
