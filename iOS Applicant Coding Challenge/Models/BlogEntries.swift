//
//  BlogEntries.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/22/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import CoreLocation

struct BlogEntries: Hashable, Codable {
  
    var last_rev: String
    var articles: [Entry]
    
}
