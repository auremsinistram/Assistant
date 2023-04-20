//
// Array+Hashable.swift
//

import Foundation

// MARK: -

public extension Array where Element: Hashable {
    
    // MARK: -
    
    var set: Set<Element> {
        return Set(self)
    }
}

// MARK: -

extension Array: BooleanOperationsProtocol where Element: Hashable {
    
    // MARK: -
    
    public typealias T = Array<Element>
    
    // MARK: -
    
    public static func >< (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
        return (lhs.set >< rhs.set).array
    }
    
    public static func <> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
        return (lhs.set <> rhs.set).array
    }
    
    public static func <~ (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
        return (lhs.set <~ rhs.set).array
    }
    
    public static func ~> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
        return (lhs.set ~> rhs.set).array
    }
}
