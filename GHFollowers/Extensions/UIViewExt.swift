//
//  UIViewExt.swift
//  GHFollowers
//
//  Created by Robert Parsons on 11/28/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
