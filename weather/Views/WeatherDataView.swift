//
//  WeatherDataView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct WeatherDataView: View {
    var body: some View {
        HStack {
            WeatherDataItemView(title: "time", data: "11:25")
            Spacer()
            WeatherDataItemView(title: "uv", data: "4")
            Spacer()
            WeatherDataItemView(title: "% rain", data: "58%")
            Spacer()
            WeatherDataItemView(title: "aq", data: "22")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(Color(0xFDFCFC))
        .cornerRadius(16)
    }
}

struct WeatherDataView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDataView()
    }
}
