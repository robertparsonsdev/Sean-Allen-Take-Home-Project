//
//  DateExt.swift
//  GHFollowers
//
//  Created by Robert Parsons on 11/16/20.
//  Copyright © 2020 Robert Parsons. All rights reserved.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
