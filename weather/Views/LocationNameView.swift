//
//  LocationNameView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct LocationNameView: View {
    let isLocationEnabled: Bool

    var body: some View {
        HStack {
            Text("Hyderabad")
                .font(.custom("Poppins-SemiBold", size: 30))
                .foregroundColor(Color(0x2C2C2C))
                .padding(.trailing, 12)
            if isLocationEnabled {
                Image("icon_location_active")
            }
        }
    }
}

struct LocationNameView_Previews: PreviewProvider {
    static var previews: some View {
        LocationNameView(isLocationEnabled: true)
    }
}
