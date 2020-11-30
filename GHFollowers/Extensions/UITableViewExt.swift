//
//  UITableViewExt.swift
//  GHFollowers
//
//  Created by Robert Parsons on 11/30/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
