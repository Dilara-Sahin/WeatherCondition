//
//  DailyModel.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 23.06.2021.
//

import Foundation
import Alamofire
//
//struct DailyModel: Codable {
//
//    var dt : String
//    var sunrise : Double
//    var sunset : Double
//    var moonrise : Double
//    var moonset : Double
//    var moonPhase : Float
//    var pressure : Int
//    var humidity : Int
//    var dewPoint : Float
//    var windSpeed : Float
//    var windDeg : Float
//    var windGust : Float
//    var clouds : Int
//    var pop : Float
//    var uvi : Float
//    var temp : Temprature
//    var feelsLike : FeelsLike
//    var weather : [Weather]
//
//    enum CodingKeys : String, CodingKey {
//
//        case dt
//        case sunrise
//        case sunset
//        case moonrise
//        case moonset
//        case moonPhase = "moon_phase"
//        case pressure
//        case humidity
//        case dewPoint = "dew_point"
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case windGust = "wind_gust"
//        case clouds
//        case pop
//        case uvi
//        case temp
//        case feelsLike = "feels_like"
//        case weather
//    }
//
//}
//
//struct Temprature: Codable {
//    var day : Float
//    var min : Float
//    var max : Float
//    var night : Float
//    var eve : Float
//    var morn : Float
//
//}
//
//struct FeelsLike: Codable {
//    var day : Float
//    var night : Float
//    var eve : Float
//    var morn : Float
//}
//
//struct Weather: Codable {
//
//    var id: Int
//    var main: String
//    var description: String
//    var icon: String
//
//    enum CodingKeys : String, CodingKey {
//
//    case id
//    case main
//    case description
//    case icon
//    }
//
//}
