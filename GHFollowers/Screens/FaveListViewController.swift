//
//  FaveListViewController.swift
//  GHFollowers
//
//  Created by Robert Parsons on 2/4/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

class FaveListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites): print(favorites)
            case .failure(let error): ()
            }
        }
    }
}
