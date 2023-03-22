//
//  ContentView.swift
//  weather
//
//  Created by Karlis Berzins on 16/03/2023.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""

    var body: some View {
        VStack(spacing: 0) {
            SearchBarView(searchText: $searchText)
            HStack(spacing: 12) {
                PageIndicatorView(isActive: false)
                PageIndicatorView(isActive: true)
                PageIndicatorView(isActive: false)
            }
            .padding(.top, 16)
            WeatherIconView(iconName: "icon_cloudy")
                .padding(.top, 32)
            LocationNameView(isLocationEnabled: true)
                .padding(.top, 32)
            DegreesView(degrees: 31)
                .padding(.top, 16)
            WeatherDataView()
            Spacer()
        }
        .padding()
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
