//
//  GFTabBar.swift
//  GHFollowers
//
//  Created by Robert Parsons on 11/23/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

class GFTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
        self.viewControllers = [createSearchNC(), createFaveListNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFaveListNC() -> UINavigationController {
        let faveListVC = FaveListViewController()
        faveListVC.title = "Favorites"
        faveListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: faveListVC)
    }
}
