//
//  Weather.swift
//  OpenWeatherMap
//
//  Created by Valery Garaev on 6/16/18.
//  Copyright © 2018 Warefly. All rights reserved.
//

import Foundation

struct Weather: Codable {
    
    let description: String
    let icon: String
    
    func descriptionString() -> String {
        return self.description
    }
}
