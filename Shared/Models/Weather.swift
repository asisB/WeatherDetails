//
//  Weather.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 02/02/2022.
//

import Foundation
import SwiftUI

struct Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feelLike: Double
    var pressure: Int
    var humidity: Int
    var dewPoint: Double
    var clouds: Int
    var windSpeed: Double
    var windDeg: Int
    var weather: [WeatherDetail]
    
    enum CodingKeys: String, CodingKey {
        case dt
        case temp
        case feelLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case clouds
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather
    }
    
    init() {
        dt = 0
        temp = 0.0
        feelLike = 0.0
        pressure = 0
        humidity = 0
        dewPoint = 0
        clouds = 0
        windSpeed = 0
        windDeg = 0
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}
