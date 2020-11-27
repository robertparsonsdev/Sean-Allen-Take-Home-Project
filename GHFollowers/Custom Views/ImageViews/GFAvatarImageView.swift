//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Robert Parsons on 2/24/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = Images.placeHolder
    let cache = NetworkManager.shared.cache

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
