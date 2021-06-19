//
//  GetLocation.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import Foundation
import CoreLocation

class GetLocation {
    // CLLocationManagerDelegate
    
    var locationManager : CLLocationManager!
    
    func getLocation()
    {
        locationManager = CLLocationManager()
        //locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.startUpdatingLocation()
        }
        
        let lat = locationManager.location?.coordinate.latitude
        let lon = locationManager.location?.coordinate.longitude
        print("lat: \(lat!)")
        print("lon: \(lon!)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location : CLLocation = locations[0]
        
        locationManager.stopUpdatingLocation()
        
    }
    
}
