//
// UITableView+Common.swift
//

#if os(iOS)
import UIKit

// MARK: -

public extension UITableView {
    
    // MARK: -
    
    func registerNib(with myClass: UITableViewCell.Type) {
        let reuseIdentifier = myClass.reuseIdentifier
        let nib = UINib(nibName: reuseIdentifier, bundle: nil)
        register(nib, forCellReuseIdentifier: reuseIdentifier)
    }
    
    func registerClass(with myClass: UITableViewCell.Type) {
        register(myClass, forCellReuseIdentifier: myClass.reuseIdentifier)
    }
}
#endif
