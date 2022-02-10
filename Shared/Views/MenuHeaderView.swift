//
//  MenuHeaderView.swift
//  WeatherUpdate (iOS)
//
//  Created by Ashish Basnet on 03/02/2022.
//

import SwiftUI

struct MenuHeaderView: View {
    @ObservedObject var cityVM: CityViewModel
    @State private var search = "Nepal"
    
    var body: some View {
        HStack{
            TextField("", text: $search)
                .padding(.leading, 20)
            
            Button {
                cityVM.city = search
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    
                    Image(systemName: "location.fill")
                }
            }.frame(width: 50, height: 50)
        }.foregroundColor(Color.white)
            .padding()
            .background(ZStack(alignment: .leading){
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.5))
            })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView(cityVM: CityViewModel())
    }
}
