//
//  User.swift
//  GHFollowers
//
//  Created by Robert Parsons on 2/19/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarURL: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlURL: String
    var following: Int
    var followers: Int
    var createdAt: String
}
