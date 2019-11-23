//
//  GetBlogEntries.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/22/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//
import Foundation

class GetBlogEntries : ObservableObject {
    var entriesJSON: [Entry]
    private let url: URL
    
    init(url: URL) {
        self.url = url
        entriesJSON = []
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
                    print("data: \(data)")
//                    let json = try? JSONSerialization.jsonObject(with: data, options: [])
                     do {
                        let decoder = JSONDecoder()
                        self.entriesJSON = try decoder.decode([Entry].self, from: data)
                        
                    } catch let error {
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
    
    
}
