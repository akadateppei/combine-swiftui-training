//
//  UINavigationController+UIGestureRecognizerDelegate.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation
import SwiftUI

extension UINavigationController {
    // Remove back button text
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
