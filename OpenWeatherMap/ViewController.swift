//
//  ViewController.swift
//  OpenWeatherMap
//
//  Created by Valery Garaev on 6/12/18.
//  Copyright © 2018 Warefly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var windSpeed: UILabel!
    @IBOutlet weak var pressure: UILabel!
    @IBOutlet weak var humidity: UILabel!
    @IBOutlet weak var weatherCondition: UILabel!
    
    @IBAction func weatherButtonClicked(_ sender: UIButton) {
        
        let city = cityField.text!
        let service = WeatherService()
        
        service.fetchData(city: city, success: { WeatherData in
            DispatchQueue.main.async {
                print(WeatherData.main.temp)
                self.temperature.text = "Temperature: \(WeatherData.main.temp)"
                self.windSpeed.text = "Wind speed: \(WeatherData.wind.speed)"
                self.pressure.text = "Pressure: \(WeatherData.main.pressure)"
                self.humidity.text = "Humidity: \(WeatherData.main.humidity)"
                if WeatherData.weather.count > 0 {
                    self.weatherCondition.text = "Weather condition: \(WeatherData.weather[0].descriptionString())"
                }
            }
        })
    }
}
