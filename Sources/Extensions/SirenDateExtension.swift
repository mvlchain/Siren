//
//  SirenDateExtension.swift
//  SirenExample
//
//  Created by Arthur Sabintsev on 3/21/17.
//  Copyright © 2017 Sabintsev iOS Projects. All rights reserved.
//

import Foundation

// MARK: - Date Extension for Siren

extension Date {
    static func days(since date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date, to: Date())
        return components.day ?? 0
    }

    static func days(since dateString: String) -> Int? {
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"

        guard let releaseDate = dateformatter.date(from: dateString) else {
            return nil
        }

        return days(since: releaseDate)
    }

    static func hours(since date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour], from: date, to: Date())
        return components.hour ?? 0
    }
    
    static func hours(since dateString: String) -> Int? {
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        
        guard let releaseDate = dateformatter.date(from: dateString) else {
            return nil
        }
        
        return hours(since: releaseDate)
    }
}
