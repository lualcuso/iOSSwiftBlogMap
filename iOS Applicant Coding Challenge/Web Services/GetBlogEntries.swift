//
//  GetBlogEntries.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/22/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//
import Foundation

class GetBlogEntries : ObservableObject {
    @Published var entriesJSON: BlogEntries
    private let url: URL
    private let entry: Entry
    
    init(url: URL) {
        self.url = url
        self.entry = Entry(title: "", author: "", image: "", article_date: "", link: "", uuid: "")
        entriesJSON = BlogEntries(last_rev: "", articles: [self.entry])
    }
    
    func fetchEntries()  {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    print("statusCode: \(response.statusCode)")
                }
                if let data = data {
                     do {
                        let decoder = JSONDecoder()
                        self.entriesJSON = try decoder.decode(BlogEntries.self, from: data)
                    } catch let error {
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
    
    
}
