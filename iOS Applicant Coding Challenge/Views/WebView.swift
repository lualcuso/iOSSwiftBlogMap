//
//  EntryWebView.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/23/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

// Taken from https://forums.developer.apple.com/thread/117348

import SwiftUI
import WebKit
  
struct WebView : UIViewRepresentable {
      
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView  {
        print(request)
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
      
}
  
#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
#endif
