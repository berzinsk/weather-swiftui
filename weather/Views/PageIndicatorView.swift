//
//  PageIndicatorView.swift
//  weather
//
//  Created by Karlis Berzins on 22/03/2023.
//

import SwiftUI

struct PageIndicatorView: View {
    let isActive: Bool

    var body: some View {
        Circle()
            .fill(isActive ? Color(0x001F70) : Color(0xC4C4C4))
            .frame(width: 8, height: 8)
    }
}

struct PageIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicatorView(isActive: true)
    }
}
