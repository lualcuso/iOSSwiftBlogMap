//
//  EntryRow.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/20/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import SwiftUI

struct EntryRow: View {
    var blogEntry: Entry
    
    var body: some View {
        HStack {
            ImageFromURL(url: "https://bv-content.beenverified.com/fit-in/60x/filters:autojpg()/" + blogEntry.image)
            

            VStack{
                Text(blogEntry.title).font(.system(size: 14)).underline()
//                Text(blogEntry.description!).font(.system(size: 12))
            }
        }
    }
}
