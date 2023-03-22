//
//  DegreesView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct DegreesView: View {
    let degrees: Int

    var body: some View {
        HStack(alignment: .top) {
            Text("\(degrees)")
                .font(.custom("Poppins-Medium", size: 70))
            Text("&deg;")
                .font(.custom("Poppins-Medium", size: 32))
        }
    }
}

struct DegreesView_Previews: PreviewProvider {
    static var previews: some View {
        DegreesView(degrees: 31)
    }
}
