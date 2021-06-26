//
//  WeatherTableViewCell.swift
//  WeatherCondition
//
//  Created by Dilara Şahin on 16.06.2021.
//

import UIKit
import Kingfisher

class WeatherTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nightDegreeTextField: UITextField!
    @IBOutlet weak var dayLightDegreeTextField: UITextField!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var daysOfWeekTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func getDays(day: DailyModel) {
        guard let imagePath = day.weather.first?.icon else {return}
        let urlString :String = "\(Constants.iconURL)"+imagePath+"@2x.png"
        let url = URL(string: urlString)
        iconImageView.kf.setImage(with: url)
        daysOfWeekTextField.text = "\(day.dt)"
        print(day.dt)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
