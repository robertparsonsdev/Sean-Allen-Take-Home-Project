//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by Robert Parsons on 2/6/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

class FollowerListViewController: UIViewController {
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (result) in
            switch result {
                case .success(let followers): print(followers)
                case .failure(let error): self.presentGFAlertOnMainThread(title: "Bad Stuff", message: error.rawValue, buttonTitle: "Okay")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
