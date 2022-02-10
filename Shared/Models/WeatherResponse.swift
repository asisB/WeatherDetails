//
//  WeatherResponse.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 02/02/2022.
//

import Foundation

struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return  WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 10), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
    
}
