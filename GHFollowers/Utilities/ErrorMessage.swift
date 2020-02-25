//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Robert Parsons on 2/24/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username crated an invalid request, Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
