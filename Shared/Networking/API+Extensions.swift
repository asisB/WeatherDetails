//
//  API+Extensions.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 02/02/2022.
//

import Foundation

extension API {
    static let baseURL = "https://api.openweathermap.org/data/2.5/"
    
    static func getURL(lat: Double, lon: Double) -> String {
        return "\(baseURL)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)"
    }
    
}
