//
//  ContentView.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/20/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Blog()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Blog")
                    }
                }
                .tag(0)
            MapView().edgesIgnoringSafeArea(.vertical)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Map")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
