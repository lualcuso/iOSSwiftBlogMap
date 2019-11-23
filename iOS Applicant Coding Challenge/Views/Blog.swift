//
//  Blog.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/20/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import SwiftUI

struct Blog: View {
    var entriesGetter: GetBlogEntries
    init() {
        let fetchUrl = URL(string: "https://www.beenverified.com/articles/index.ios.json")
        entriesGetter = GetBlogEntries(url: fetchUrl!)
    }
    
    var body: some View {
        NavigationView {
            List(entriesJSON, id: \.uuid) { entry in
                EntryRow(blogEntry: entry)
            }
        }.onAppear(perform: entriesGetter.fetchEntries)
    }
}

struct Blog_Previews: PreviewProvider {
    static var previews: some View {
        Blog()
    }
}
