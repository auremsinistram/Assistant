//
// Array+Common.swift
//

import Foundation

// MARK: -

public extension Array {
    
    // MARK: -
    
    subscript(safe index: Int) -> Element? {
        return 0 <= index && index < count ? self[index] : nil
    }
    
    // MARK: -
    
    mutating func move(at atIndex: Int, to toIndex: Int) {
        let element = remove(at: atIndex)
        insert(element, at: toIndex)
    }
}
