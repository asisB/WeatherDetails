//
//  WeatherUpdateApp.swift
//  Shared
//
//  Created by Ashish Basnet on 02/02/2022.
//

import SwiftUI

@main
struct WeatherUpdateApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(cityVM: CityViewModel())
        }
    }
}
