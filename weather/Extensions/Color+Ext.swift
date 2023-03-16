//
//  Color+Ext.swift
//  weather
//
//  Created by Karlis Berzins on 16/03/2023.
//

import SwiftUI

extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: alpha
        )
    }

    static var appItemBackgroundGray = Color(0xFDFCFC)
    static var appTextGray = Color(0xC4C4C4)
    static var appTextDark = Color(0x2C2C2C)
}
