//
// AViewController+Common.swift
//

#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif

// MARK: -

public extension AViewController {
    
    // MARK: -
    
    static func instantiate() -> Self {
        let name = String(describing: self)
        let storyboard = AStoryboard(name: name, bundle: nil)
#if os(iOS)
        return storyboard.instantiateInitialViewController() as! Self
#endif
#if os(macOS)
        return storyboard.instantiateInitialController() as! Self
#endif
    }
}
