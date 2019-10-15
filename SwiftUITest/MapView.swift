//
//  MapView.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/14.
//  Copyright © 2019 gelei. All rights reserved.
//

import SwiftUI
import MapKit
//使用UIView,遵循UIViewRepresentable协议,实现两个方法:makeUIView
struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: Common.landmarkData[0].locationCoordinate)
    }
}
