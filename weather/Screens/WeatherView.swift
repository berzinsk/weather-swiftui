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
        VStack {
            SearchBarView(searchText: $searchText)
            HStack(spacing: 12) {
                PageIndicatorView(isActive: false)
                PageIndicatorView(isActive: true)
                PageIndicatorView(isActive: false)
            }
            .padding(.top, 16)
            Image("icon_cloudy")
                .padding(.top, 32)
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
