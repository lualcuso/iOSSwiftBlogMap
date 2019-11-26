//
//  MapView.swift
//  iOS Applicant Coding Challenge
//
//  Created by Luis Cubillo on 11/25/19.
//  Copyright © 2019 Luis Cubillo. All rights reserved.
//

import SwiftUI
import WebKit
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

  func updateUIView(_ uiView: MKMapView, context: Context) {
  }
}
