//
// CGPoint+Common.swift
//

#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif

// MARK: -

public extension CGPoint {
    
    // MARK: -
    
    static var minXminY: CGPoint {
        return CGPoint(
            x: 0.0,
            y: 0.0
        )
    }
    
    static var maxXminY: CGPoint {
        return CGPoint(
            x: 1.0,
            y: 0.0
        )
    }
    
    static var maxXmaxY: CGPoint {
        return CGPoint(
            x: 1.0,
            y: 1.0
        )
    }
    
    static var minXmaxY: CGPoint {
        return CGPoint(
            x: 0.0,
            y: 1.0
        )
    }
}
