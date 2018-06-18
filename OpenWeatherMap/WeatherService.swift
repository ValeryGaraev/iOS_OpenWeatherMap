//
//  WeatherService.swift
//  OpenWeatherMap
//
//  Created by Valery Garaev on 6/16/18.
//  Copyright © 2018 Warefly. All rights reserved.
//

import Foundation

class WeatherService {
    
    func fetchData(city: String, success: @escaping (WeatherData) -> ()) {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=9f1c6da33186cff18e6aa50ac4532cc0&units=metric") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let weather = try JSONDecoder().decode(WeatherData.self, from: data)
                success(weather)
            } catch {
                print(error)
            }
            }.resume()
    }
}
