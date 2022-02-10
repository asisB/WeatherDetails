//
//  DailyWeatherView.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 03/02/2022.
//

import SwiftUI

struct DailyWeatherView: View {
    @ObservedObject var cityVM: CityViewModel
    
    var body: some View {
        ForEach(cityVM.weather.daily) { weather in
            LazyVStack{
                dailyCell(weather: weather)
            }
        }
    }
    
    private func dailyCell(weather: DailyWeather) -> some View {
        HStack{
            Text(cityVM.getDayFor(timeStamp: weather.dt).uppercased())
                .frame(width: 50)
            Spacer()
            Text("\(cityVM.getTempFor(temp: weather.temp.max)) | \(cityVM.getTempFor(temp: weather.temp.min))F")
                .frame(width: 150)
            Spacer()
            cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
            
        }.foregroundColor(.white)
            .padding(.horizontal, 40)
            .padding(.vertical, 16)
            .background(RoundedRectangle(cornerRadius: 5).fill(.linearGradient(Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.5))
                .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 2)
    }
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherView(cityVM: CityViewModel())
    }
}
