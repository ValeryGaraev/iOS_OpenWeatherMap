//
//  WeatherData.swift
//  OpenWeatherMap
//
//  Created by Valery Garaev on 6/16/18.
//  Copyright © 2018 Warefly. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    
    let weather: [Weather]
    let main: Main
    let wind: Wind
    let name: String
}
