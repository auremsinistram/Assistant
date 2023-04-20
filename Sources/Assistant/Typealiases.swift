//
// Typealiases.swift
//

#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif
import SwiftUI

// MARK: -

#if os(iOS)
public typealias AColor = UIColor
public typealias AView = UIView
public typealias AImage = UIImage
public typealias AControl = UIControl
public typealias AViewController = UIViewController
public typealias AStoryboard = UIStoryboard
public typealias ADocument = UIDocument
@available(iOS 13.0, *)
public typealias AViewRepresentable = UIViewRepresentable
public typealias AEdgeInsets = UIEdgeInsets
#endif
#if os(macOS)
public typealias AColor = NSColor
public typealias AView = NSView
public typealias AImage = NSImage
public typealias AControl = NSControl
public typealias AViewController = NSViewController
public typealias AStoryboard = NSStoryboard
public typealias ADocument = NSDocument
@available(macOS 10.15, *)
public typealias AViewRepresentable = NSViewRepresentable
public typealias AEdgeInsets = NSEdgeInsets
#endif
