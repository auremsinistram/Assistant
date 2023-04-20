//
// BooleanOperationsProtocol.swift
//

import Foundation

// MARK: -

public protocol BooleanOperationsProtocol {
    
    // MARK: -
    
    associatedtype T
    
    // MARK: -
    
    static func >< (lhs: Self, rhs: Self) -> T
    static func <> (lhs: Self, rhs: Self) -> T
    static func <~ (lhs: Self, rhs: Self) -> T
    static func ~> (lhs: Self, rhs: Self) -> T
}
