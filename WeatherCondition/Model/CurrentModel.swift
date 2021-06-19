//
//  CurrentModel.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation

struct CurrentModel: Codable {
    
    var dt: Double?
    var sunrise: Double?
    var sunset: Double?
    var temp: Float?
    var feelsLike: Float?
    var pressure: Double?
    var humidity: Int?
    var dewPoint: Float?
    var uvi: Int?
    var clouds: Int?
    var visisbility: Double?
    var windSpeed: Int?
    var windDeg: Int?
    var weather: [Weather]
    
    enum CodingKeys : String, CodingKey {
        case dt
        case sunrise
        case sunset
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case uvi
        case clouds
        case visisbility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather
    }
}

struct Weather: Codable {
    
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}
