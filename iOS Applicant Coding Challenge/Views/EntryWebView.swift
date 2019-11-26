//
//  EntryWebView.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/23/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import SwiftUI

struct EntryWebView: View {
    var url: String
    
    init(url: String) {
        self.url = url.replacingOccurrences(of: "ios.html", with: "").replacingOccurrences(of: "http", with: "https")
        print(self.url)
    }
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string: url)!))
    }
}
