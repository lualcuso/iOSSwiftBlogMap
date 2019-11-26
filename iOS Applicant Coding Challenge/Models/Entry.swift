//
//  Enrty.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/20/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//


import CoreLocation

struct Entry: Hashable, Codable {
  
    var title: String
    var description: String? = "No Description Available"
    var author: String
    var image: String
    var article_date: String
    var link: String
    var uuid: String
    
}

