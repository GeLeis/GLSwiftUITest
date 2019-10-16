//
//  Landmark.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/14.
//  Copyright © 2019 gelei. All rights reserved.
//

import SwiftUI
import CoreLocation
import HandyJSON

struct Landmark: Hashable, Codable ,HandyJSON {
    init() {
        l_id = 1
        name = "gelei"
        coordinates = Coordinates(latitude: 1, longitude: 1)
        imageName = "cart"
        state = ""
        park = ""
        category = Category.lakes
    }
    
    var l_id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite = false
    var isFeatured = true

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    var featureImage: Image? {
        guard isFeatured else { return nil }
        
        return Image(
            ImageStore.loadImage(name: "\(imageName)"),
            scale: 2,
            label: Text(verbatim: name))
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        Image(imageName)
    }
}

extension Landmark : Identifiable {
    var id: Int {
        return self.l_id
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
