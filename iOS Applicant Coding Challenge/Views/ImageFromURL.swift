//
//  ImageFromURL.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/22/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import Foundation
import SwiftUI

struct ImageFromURL: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        let imageURL = URL(string: url)
        imageLoader = ImageLoader(url: imageURL!)
    }
    
    var body: some View {
        VStack {
            if imageLoader.image != nil {
                Image(uiImage: imageLoader.image!)
                    .resizable().frame(width: 50, height: 50)
            }
        }
        .onAppear(perform: imageLoader.load)
        .onDisappear(perform: imageLoader.cancel)
    }
}
