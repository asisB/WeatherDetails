//
//  HomeView.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 03/02/2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var cityVM = CityViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(spacing: 0){
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false){
                    CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 42)
        }.background(RoundedRectangle(cornerRadius: 5).fill(.linearGradient(Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.5))
            .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
