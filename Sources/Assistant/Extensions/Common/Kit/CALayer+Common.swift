//
// CALayer+Common.swift
//

#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif

// MARK: -

public extension CALayer {
    
    // MARK: -
    
    static func performWithoutAnimation(_ block: () -> Void) {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        block()
        CATransaction.commit()
    }
    
    // MARK: -
    
    func setCornerRadius(_ cornerRadius: CGFloat) {
        self.cornerRadius = cornerRadius
        masksToBounds = true
    }
}
