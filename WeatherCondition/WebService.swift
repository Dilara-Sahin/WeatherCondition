//
//  WebService.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation

let request = URLRequest(url: URL(string: "")!)

//class WebService {
//
//
//    typealias CompletionHandler<T> = (T) -> ()
//
//    func getIcon (icon: String, completionHandler: @escaping CompletionHandler<Any>)
//    {
//        AF.request("\(Constants.iconURL)"+icon+"@2x.png").response
//        { response in
//            guard let data = response.data else { return }
//            do {
//                let geticon = try JSONDecoder().decode(Weather.self, from: data)
//                completionHandler(geticon)
//            } catch let error { print(error)}
//        }
//
//    }
//
//    func getWeather (lat: String, lon: String, completionHandler: @escaping CompletionHandler<Any>)
//    {
//        AF.request("\(Constants.baseURL)"+"lat="+"\(lat)"+"&lon="+"\(lon)"+"&exclude=hourly&appid=8ddadecc7ae4f56fee73b2b405a63659").response
//        { response in
//            guard let data = response.data else { return }
//            do {
//                let getweather = try JSONDecoder().decode(WeatherModel.self, from: data)
//                completionHandler(getweather)
//            } catch let error { print(error)}
//            print("data:\(data)") }
//
//    }
//
//}
