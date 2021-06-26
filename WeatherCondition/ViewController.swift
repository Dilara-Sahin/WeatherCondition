//
//  ViewController.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import UIKit
import CoreLocation
import Kingfisher

class ViewController: UIViewController {
 
    @IBOutlet weak var tableView: UITableView!
    
    var getLoc = GetLocation()
    var daily = [DailyModel?]()
    var lat = "41.2345"
    var lon = "34.2345"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        WebService().getWeather(lat: lat, lon: lon) { (obje) in
            var weatherObje : WeatherModel?
            weatherObje = obje as? WeatherModel
            self.daily.append(contentsOf: weatherObje!.daily)
            weatherObje?.daily
        }
        
        getLoc.getLocation()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibname = UINib(nibName: "WeatherTableViewCell", bundle: nil)
        tableView.register(nibname, forCellReuseIdentifier: "Cell")
    }
    
  
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daily.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherTableViewCell
        
        cell.getDays(day: daily[indexPath.row]! )
    
        return cell
    }
    
}
