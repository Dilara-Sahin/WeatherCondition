//
//  WebService.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation
import Alamofire

class WebService {
    
    typealias CompletionHandler<T> = (T) -> ()
    
    func getIcon (completionHandler: @escaping CompletionHandler<Any>)
    {
        AF.request("\(Constants.iconURL)").response
    }
    
}
