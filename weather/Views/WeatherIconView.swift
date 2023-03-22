//
//  WeatherIconView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct WeatherIconView: View {
    let iconName: String

    var body: some View {
        Image(iconName)
            .padding(.top, 32)
    }
}

struct WeatherIconView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherIconView(iconName: "icon_cloudy")
    }
}
