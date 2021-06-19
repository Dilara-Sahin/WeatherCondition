//
//  Constants.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation

struct Constants {
    
    static let baseURL = "http://api.openweathermap.org/data/2.5/onecall"
    static let iconURL = "http://openweathermap.org/img/wn/" + "\(Weather().icon)" + "@2x.png"
    
}
