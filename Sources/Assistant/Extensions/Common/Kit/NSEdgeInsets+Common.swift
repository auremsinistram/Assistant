//
// NSEdgeInsets+Common.swift
//

#if os(macOS)
import AppKit

// MARK: -

public extension NSEdgeInsets {
    
    // MARK: -
    
    static var zero: NSEdgeInsets {
        return NSEdgeInsets()
    }
}
#endif
