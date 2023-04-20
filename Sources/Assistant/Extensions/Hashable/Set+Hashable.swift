//
// Set+Hashable.swift
//

import Foundation

// MARK: -

public extension Set where Element: Hashable {
    
    // MARK: -
    
    var array: Array<Element> {
        return Array(self)
    }
}

// MARK: -

extension Set: BooleanOperationsProtocol where Element: Hashable {
    
    // MARK: -
    
    public typealias T = Set<Element>
    
    // MARK: -
    
    public static func >< (lhs: Set<Element>, rhs: Set<Element>) -> Set<Element> {
        return lhs.intersection(rhs)
    }
    
    public static func <> (lhs: Set<Element>, rhs: Set<Element>) -> Set<Element> {
        return lhs.symmetricDifference(rhs)
    }
    
    public static func <~ (lhs: Set<Element>, rhs: Set<Element>) -> Set<Element> {
        return (lhs <> rhs) >< lhs
    }
    
    public static func ~> (lhs: Set<Element>, rhs: Set<Element>) -> Set<Element> {
        return (lhs <> rhs) >< rhs
    }
}
