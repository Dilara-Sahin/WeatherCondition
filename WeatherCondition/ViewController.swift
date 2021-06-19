//
//  ViewController.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    var getLoc : GetLocation = GetLocation()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GetLocation().getLocation()
       
    }

   
}



