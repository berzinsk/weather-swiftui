//
//  WeatherDataItemView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct WeatherDataItemView: View {
    let title: String
    let data: String

    var body: some View {
        VStack {
            Text(title.uppercased())
                .font(.custom("Poppins-Medium", size: 12))
                .foregroundColor(Color(0xC4C4C4))
            Text(data)
                .font(.custom("Poppins-Medium", size: 15))
                .foregroundColor(Color(0x9A9A9A))
        }
    }
}

struct WeatherDataItemView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDataItemView(title: "time", data: "11:25")
    }
}
