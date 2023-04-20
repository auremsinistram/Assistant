//
// UITableViewCell+Common.swift
//

#if os(iOS)
import UIKit

// MARK: -

public extension UITableViewCell {
    
    // MARK: -
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
#endif
