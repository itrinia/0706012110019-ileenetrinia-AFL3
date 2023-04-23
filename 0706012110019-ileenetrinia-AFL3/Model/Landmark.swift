//
//  Landmark.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//


import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    //add a Category enumeration and a category property to the Landmark structure.
    //The landmarkData.json file already includes a category value for each landmark with one of three string values. By matching the names in the data file, i can rely on the structure’s Codable conformance to load the data. jd yg d bwh ini adlh memanggol 3 data ituu
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"
        }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
