//
//  WeatherModel.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation

struct WeatherModel: Codable {
    
    var lat: Float?
    var lon: Float?
    var timezone: String?
    var timezoneOffset: Double?
    var current: CurrentModel
    var minutely: [Minutely]
    
    enum CodingKeys : String, CodingKey {
        case lat
        case lon
        case timezone
        case timezoneOffset = "timezone_offset"
        case current
        case minutely
    }
}

struct Minutely:Codable {
    
    var dt: Double?
    var precipitation: Int?
}
