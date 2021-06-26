//
//  GetLocation.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 24.06.2021.
//

import Foundation
import CoreLocation

class GetLocation : NSObject, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager!
    var lat: String!
    var lon: String!
    
    func getLocation()
    {
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.startUpdatingLocation()
        }
        //else durumu kontrol et
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location : CLLocation! = locations[0]
        lon = String(location.coordinate.longitude)
        lat = String(location.coordinate.latitude)
        print("lon: \(lon)")
        print("lat: \(lat)")
       
    }
    
}
