//
// AView+Common.swift
//

#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif

// MARK: -

public extension AView {
    
    // MARK: -
    
    var mainLayer: CALayer {
#if os(iOS)
        return layer
#endif
#if os(macOS)
        if layer == nil {
            layer = CALayer()
        }
        return layer!
#endif
    }
    
    // MARK: -
    
    func insertSubview(_ subview: AView, edgeInsets: AEdgeInsets) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
        let constraints = [
            NSLayoutConstraint(
                item: subview,
                attribute: .top,
                relatedBy: .equal,
                toItem: self,
                attribute: .top,
                multiplier: 1.0,
                constant: edgeInsets.top
            ),
            NSLayoutConstraint(
                item: subview,
                attribute: .left,
                relatedBy: .equal,
                toItem: self,
                attribute: .left,
                multiplier: 1.0,
                constant: edgeInsets.left
            ),
            NSLayoutConstraint(
                item: self,
                attribute: .bottom,
                relatedBy: .equal,
                toItem: subview,
                attribute: .bottom,
                multiplier: 1.0,
                constant: edgeInsets.bottom
            ),
            NSLayoutConstraint(
                item: self,
                attribute: .right,
                relatedBy: .equal,
                toItem: subview,
                attribute: .right,
                multiplier: 1.0,
                constant: edgeInsets.right
            )
        ]
        addConstraints(constraints)
    }
    
#if os(macOS)
    func setClipToBounds(_ clipToBounds: Bool) {
        wantsLayer = true
        layer?.masksToBounds = clipToBounds
    }
#endif
}
